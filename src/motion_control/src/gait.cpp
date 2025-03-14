#include"motion_control/gait.h"
#include"std_msgs/Float64.h"
#include"motion_control/ros_tool.h"
#include<time.h>

extern ROSTool * g_rosTool;//声明全局使用ROS类
Gait::Gait()
{
    /*机器人控制参数初始化*/
    this->m_stepHeight = DEF_INIT_STEPHEIGHT;
    this->m_stridX = 0;
    this->m_stridY = 0;
    this->m_Tcycle = DEF_INIT_TCYCLE;
    this->m_pitch = 0;
    this->m_roll = 0;
    this->m_yaw = 0;
    this->m_PosX = 0;
    this->m_PosY = 0;
    this->m_bodyHeight = DEF_INIT_BODYHEIGHT;
    this->m_gait = DEF_INIT_GAIT;
    this->m_isRecoredData = false;
    this->m_isParking = false;

    /*驾驶员指令初始化*/
    this->driverCommands.gaitFlag = DEF_INIT_GAIT;
    this->driverCommands.gaitCycle = DEF_INIT_TCYCLE;
    this->driverCommands.strideX = 0;
    this->driverCommands.strideY = 0;
    this->driverCommands.posX = 0;
    this->driverCommands.posY = 0;
    this->driverCommands.yaw = 0;
    this->driverCommands.pitch = 0;
    this->driverCommands.roll = 0;
    this->driverCommands.bodyHeight = DEF_INIT_BODYHEIGHT;
    this->driverCommands.stepHeight = DEF_INIT_STEPHEIGHT;

    /*机器人指令初始化*/
    this->robotCommands.gaitFlag = DEF_INIT_GAIT;
    this->robotCommands.gaitCycle = DEF_INIT_TCYCLE;
    this->robotCommands.strideX = 0;
    this->robotCommands.strideY = 0;
    this->robotCommands.posX = 0;
    this->robotCommands.posY = 0;
    this->robotCommands.yaw = 0;
    this->robotCommands.pitch = 0;
    this->robotCommands.roll = 0;
    this->robotCommands.bodyHeight = DEF_INIT_BODYHEIGHT;
    this->robotCommands.stepHeight = DEF_INIT_STEPHEIGHT;
    
    //初始化足端坐标位置
    curLegLF_Position.x = (L1+L2)*cos(INCLUDE_ANGLE);
    curLegLF_Position.y = (L1+L2)*sin(INCLUDE_ANGLE);
    curLegLF_Position.z = -m_bodyHeight;
    curLegLM_Position.x = 0;
    curLegLM_Position.y = (L1+L2);
    curLegLM_Position.z = -m_bodyHeight; 
    curLegLH_Position.x = -(L1+L2)*cos(INCLUDE_ANGLE);
    curLegLH_Position.y = (L1+L2)*sin(INCLUDE_ANGLE);
    curLegLH_Position.z = -m_bodyHeight;
    curLegRF_Position.x = (L1+L2)*cos(INCLUDE_ANGLE);
    curLegRF_Position.y = -(L1+L2)*sin(INCLUDE_ANGLE);
    curLegRF_Position.z = -m_bodyHeight;
    curLegRM_Position.x = 0;
    curLegRM_Position.y = -(L1+L2);
    curLegRM_Position.z = -m_bodyHeight;
    curLegRH_Position.x = -(L1+L2)*cos(INCLUDE_ANGLE);
    curLegRH_Position.y = -(L1+L2)*sin(INCLUDE_ANGLE);
    curLegRH_Position.z = -m_bodyHeight; 
    //初始化步态切换起始位置 走半步用的
    startLF = curLegLF_Position;
    startLM = curLegLM_Position;
    startLH = curLegLH_Position;
    startRF = curLegRF_Position;
    startRM = curLegRM_Position;
    startRH = curLegRH_Position;
    //初始化手动步态参数
    m_menual_isSelectLF=0;
    m_menual_isSelectLM=0;
    m_menual_isSelectLH=0;
    m_menual_isSelectRF=0;
    m_menual_isSelectRM=0;
    m_menual_isSelectRH=0;
    m_menual_del_footPosition_x=0;
    m_menual_del_footPosition_y=0;
    m_menual_del_footPosition_z=0;
    m_menual_del_bodyPos_x=0;
    m_menual_del_bodyPos_y=0;
    m_menual_del_bodyPos_z=0;

    m_last_pitch = 0;//记录上一次附仰角
    cameraLeftRightAngle = 0;//摄像头左右转角度
    m_get_energy = 0;//能量消耗初始化
    m_lastEnergyAngle.Angle1=0;
    m_lastEnergyAngle.Angle2=0;
    m_lastEnergyAngle.Angle3=0;
    m_get_collection = 0;//碰撞次数初始化
    
}
Gait::~Gait(){}
void Gait::getYawFootPosition(enum LEGNUM legNum, hexapod_msg::footPosition & start, hexapod_msg::footPosition & end)
{
    switch (legNum)
    {
    case LEGNUM::LF:
        {
            //起始点在根关节坐标系下的坐标
            start.x = (L1+L2)*cos(INCLUDE_ANGLE) + m_stridX/2;
            start.y = (L1+L2)*sin(INCLUDE_ANGLE) + m_stridY/2;
            start.z = -m_bodyHeight;
            //从根关节坐标系转换为机身坐标系
            start.x = start.x + BODY_LENGTH/2;
            start.y = start.y + BODY_WIDTH_SMALL/2;
            //计算足端在机身坐标系下的终点坐标
            end.x = cos(-m_yaw)*start.x - sin(-m_yaw)*start.y - m_stridX;
            end.y = sin(-m_yaw)*start.x + cos(-m_yaw)*start.y - m_stridY;
            end.z = -m_bodyHeight;
            //将足端在机身坐标系下坐标转换为根关节坐标系下坐标
            start.x = start.x - BODY_LENGTH/2 + m_PosX;
            start.y = start.y - BODY_WIDTH_SMALL/2 + m_PosY;
            start.z = start.z + sin(m_roll/180.0*M_PI)*(BODY_WIDTH_SMALL/2+(L1+L2)*sin(INCLUDE_ANGLE)) + sin(m_pitch/180.0*M_PI)*(BODY_LENGTH/2+(L1+L2)*cos(INCLUDE_ANGLE));
            end.x = end.x - BODY_LENGTH/2 + m_PosX;
            end.y = end.y - BODY_WIDTH_SMALL/2 + m_PosY;
            end.z = end.z + sin(m_roll/180.0*M_PI)*(BODY_WIDTH_SMALL/2+(L1+L2)*sin(INCLUDE_ANGLE)) + sin(m_pitch/180.0*M_PI)*(BODY_LENGTH/2+(L1+L2)*cos(INCLUDE_ANGLE));
        }
        break;
    case LEGNUM::LM:
        {
            //起始点在根关节坐标系下的坐标
            start.x = m_stridX/2;
            start.y = (L1+L2) + m_stridY/2;
            start.z = -m_bodyHeight;
            //从根关节坐标系转换为机身坐标系
            start.y = start.y + BODY_WIDTH_LARGE/2;
            //计算足端在机身坐标系下的终点坐标
            end.x = cos(-m_yaw)*start.x - sin(-m_yaw)*start.y - m_stridX;
            end.y = sin(-m_yaw)*start.x + cos(-m_yaw)*start.y - m_stridY;
            end.z = -m_bodyHeight;
            //将足端在机身坐标系下坐标转换为根关节坐标系下坐标
            start.x = start.x + m_PosX;
            start.y = start.y - BODY_WIDTH_LARGE/2 + m_PosY;
            start.z = start.z + sin(m_roll/180.0*M_PI) * (BODY_WIDTH_LARGE/2+L1+L2);
            end.x = end.x + m_PosX;
            end.y = end.y - BODY_WIDTH_LARGE/2 + m_PosY;
            end.z = end.z + sin(m_roll/180.0*M_PI) * (BODY_WIDTH_LARGE/2+L1+L2);
        }
        break;
    case LEGNUM::LH:
        {
            //起始点在根关节坐标系下的坐标
            start.x = -(L1+L2)*cos(INCLUDE_ANGLE) + m_stridX/2;
            start.y = (L1+L2)*sin(INCLUDE_ANGLE) + m_stridY/2;
            start.z = -m_bodyHeight;
            //从根关节坐标系转换为机身坐标系
            start.x = start.x - BODY_LENGTH/2;
            start.y = start.y + BODY_WIDTH_SMALL/2;
            //计算足端在机身坐标系下的终点坐标
            end.x = cos(-m_yaw)*start.x - sin(-m_yaw)*start.y - m_stridX;
            end.y = sin(-m_yaw)*start.x + cos(-m_yaw)*start.y - m_stridY;
            end.z = -m_bodyHeight;
            //将足端在机身坐标系下坐标转换为根关节坐标系下坐标
            start.x = start.x + BODY_LENGTH/2 + m_PosX;
            start.y = start.y - BODY_WIDTH_SMALL/2 + m_PosY;
            start.z = start.z + sin(m_roll/180.0*M_PI)*(BODY_WIDTH_SMALL/2+(L1+L2)*sin(INCLUDE_ANGLE)) - sin(m_pitch/180.0*M_PI)*(BODY_LENGTH/2+(L1+L2)*cos(INCLUDE_ANGLE));
            end.x = end.x + BODY_LENGTH/2 + m_PosX;
            end.y = end.y - BODY_WIDTH_SMALL/2 + m_PosY;
            end.z = end.z + sin(m_roll/180.0*M_PI) * (BODY_WIDTH_SMALL/2+(L1+L2)*sin(INCLUDE_ANGLE)) - sin(m_pitch/180.0*M_PI)*(BODY_LENGTH/2+(L1+L2)*cos(INCLUDE_ANGLE));
        }
        break;
    case LEGNUM::RF:
        {
            //起始点在根关节坐标系下的坐标
            start.x = (L1+L2)*cos(INCLUDE_ANGLE) + m_stridX/2;
            start.y = -(L1+L2)*sin(INCLUDE_ANGLE) + m_stridY/2;
            start.z = -m_bodyHeight;
            //从根关节坐标系转换为机身坐标系
            start.x = start.x + BODY_LENGTH/2;
            start.y = start.y - BODY_WIDTH_SMALL/2;
            //计算足端在机身坐标系下的终点坐标
            end.x = cos(-m_yaw)*start.x - sin(-m_yaw)*start.y - m_stridX;
            end.y = sin(-m_yaw)*start.x + cos(-m_yaw)*start.y - m_stridY;
            end.z = -m_bodyHeight;
            //将足端在机身坐标系下坐标转换为根关节坐标系下坐标
            start.x = start.x - BODY_LENGTH/2 + m_PosX;
            start.y = start.y + BODY_WIDTH_SMALL/2 + m_PosY;
            start.z = start.z - sin(m_roll/180.0*M_PI)*(BODY_WIDTH_SMALL/2+(L1+L2)*sin(INCLUDE_ANGLE)) + sin(m_pitch/180.0*M_PI)*(BODY_LENGTH/2+(L1+L2)*cos(INCLUDE_ANGLE));
            end.x = end.x - BODY_LENGTH/2 + m_PosX;
            end.y = end.y + BODY_WIDTH_SMALL/2 + m_PosY;
            end.z = end.z - sin(m_roll/180.0*M_PI)*(BODY_WIDTH_SMALL/2+(L1+L2)*sin(INCLUDE_ANGLE)) + sin(m_pitch/180.0*M_PI)*(BODY_LENGTH/2+(L1+L2)*cos(INCLUDE_ANGLE));
        }
        break;
    case LEGNUM::RM:
        {
            //起始点在根关节坐标系下的坐标
            start.x = m_stridX/2;
            start.y = -(L1+L2) + m_stridY/2;
            start.z = -m_bodyHeight;
            //从根关节坐标系转换为机身坐标系
            start.y = start.y - BODY_WIDTH_LARGE/2;
            //计算足端在机身坐标系下的终点坐标
            end.x = cos(-m_yaw)*start.x - sin(-m_yaw)*start.y - m_stridX;
            end.y = sin(-m_yaw)*start.x + cos(-m_yaw)*start.y - m_stridY;
            end.z = -m_bodyHeight;
            //将足端在机身坐标系下坐标转换为根关节坐标系下坐标
            start.x = start.x + m_PosX;
            start.y = start.y + BODY_WIDTH_LARGE/2 + m_PosY;
            start.z = start.z - sin(m_roll/180.0*M_PI) * (BODY_WIDTH_LARGE/2+L1+L2);
            end.x = end.x + m_PosX;
            end.y = end.y + BODY_WIDTH_LARGE/2 + m_PosY;
            end.z = end.z - sin(m_roll/180.0*M_PI) * (BODY_WIDTH_LARGE/2+L1+L2);
        }
        break;
    case LEGNUM::RH:
        {
            //起始点在根关节坐标系下的坐标
            start.x = -(L1+L2)*cos(INCLUDE_ANGLE) + m_stridX/2;
            start.y = -(L1+L2)*sin(INCLUDE_ANGLE) + m_stridY/2;
            start.z = -m_bodyHeight;
            //从根关节坐标系转换为机身坐标系
            start.x = start.x - BODY_LENGTH/2;
            start.y = start.y - BODY_WIDTH_SMALL/2;
            //计算足端在机身坐标系下的终点坐标
            end.x = cos(-m_yaw)*start.x - sin(-m_yaw)*start.y - m_stridX;
            end.y = sin(-m_yaw)*start.x + cos(-m_yaw)*start.y - m_stridY;
            end.z = -m_bodyHeight;
            //将足端在机身坐标系下坐标转换为根关节坐标系下坐标
            start.x = start.x + BODY_LENGTH/2 + m_PosX;
            start.y = start.y + BODY_WIDTH_SMALL/2 + m_PosY;
            start.z = start.z - sin(m_roll/180.0*M_PI)*(BODY_WIDTH_SMALL/2+(L1+L2)*sin(INCLUDE_ANGLE)) - sin(m_pitch/180.0*M_PI)*(BODY_LENGTH/2+(L1+L2)*cos(INCLUDE_ANGLE));
            end.x = end.x + BODY_LENGTH/2 + m_PosX;
            end.y = end.y + BODY_WIDTH_SMALL/2 + m_PosY;
            end.z = end.z - sin(m_roll/180.0*M_PI)*(BODY_WIDTH_SMALL/2+(L1+L2)*sin(INCLUDE_ANGLE)) - sin(m_pitch/180.0*M_PI)*(BODY_LENGTH/2+(L1+L2)*cos(INCLUDE_ANGLE));
        }
        break;
    default:
        break;
    }
}
void Gait::moveLeg(enum LEGNUM legNum, hexapod_msg::legAngle angle)
{
    double delAngle1 = abs(angle.Angle1-m_lastEnergyAngle.Angle1);
    double delAngle2 = abs(angle.Angle2-m_lastEnergyAngle.Angle2);
    double delAngle3 = abs(angle.Angle3-m_lastEnergyAngle.Angle3);
    m_get_energy = m_get_energy+delAngle1+delAngle2+delAngle3;
    m_lastEnergyAngle = angle;
    switch (legNum)
    {
    case LEGNUM::LF:
        {
            g_rosTool->RosPubLF1(angle.Angle1);
            g_rosTool->RosPubLF2(angle.Angle2);
            g_rosTool->RosPubLF3(angle.Angle3);
        }
        break;
    case LEGNUM::LM:
        {
            g_rosTool->RosPubLM1(angle.Angle1);
            g_rosTool->RosPubLM2(angle.Angle2);
            g_rosTool->RosPubLM3(angle.Angle3);
        }
        break;  
    case LEGNUM::LH:
        {
            g_rosTool->RosPubLH1(angle.Angle1);
            g_rosTool->RosPubLH2(angle.Angle2);
            g_rosTool->RosPubLH3(angle.Angle3);
        }
        break;  
    case LEGNUM::RH:
        {
            g_rosTool->RosPubRH1(angle.Angle1);
            g_rosTool->RosPubRH2(angle.Angle2);
            g_rosTool->RosPubRH3(angle.Angle3);
        }
        break;
    case LEGNUM::RM:
        {
            g_rosTool->RosPubRM1(angle.Angle1);
            g_rosTool->RosPubRM2(angle.Angle2);
            g_rosTool->RosPubRM3(angle.Angle3);
        }
        break;
    case LEGNUM::RF:
        {
            g_rosTool->RosPubRF1(angle.Angle1);
            g_rosTool->RosPubRF2(angle.Angle2);
            g_rosTool->RosPubRF3(angle.Angle3);
        }
        break;
    default:
        break;
    }
}
void Gait::yawTwoGait()
{
    int cishu = DELAY_TIME;
    //int sleepTime = m_Tcycle * 1000000/DELAY_TIME;
    double Ts1 = cishu/2;
    if(isStart)//站立到行走走半步
    {
        hexapod_msg::footPosition endLF;
        hexapod_msg::footPosition endLM;
        hexapod_msg::footPosition endLH;
        hexapod_msg::footPosition endRF;
        hexapod_msg::footPosition endRM;
        hexapod_msg::footPosition endRH;

        endLF.x = startLF.x + m_stridX/2;
        endLF.y = startLF.y + m_stridY/2;
        endLF.z = startLF.z;
        endLH.x = startLH.x + m_stridX/2;
        endLH.y = startLH.y + m_stridY/2;
        endLH.z = startLH.z;
        endRM.x = startRM.x + m_stridX/2;
        endRM.y = startRM.y + m_stridY/2;
        endRM.z = startRM.z;
        endRF.x = startRF.x - m_stridX/2;
        endRF.y = startRF.y - m_stridY/2;
        endRF.z = startRF.z;
        endRH.x = startRH.x - m_stridX/2;
        endRH.y = startRH.y - m_stridY/2;
        endRH.z = startRH.z;
        endLM.x = startLM.x - m_stridX/2;
        endLM.y = startLM.y - m_stridY/2;
        endLM.z = startLM.z;
        for(int i=0; i<cishu/2; i++)
        {
            moveLeg(LEGNUM::LF, getTrajectory(startLF, endLF, m_stepHeight, i, Ts1, cishu, curLegLF_Position, LEGNUM::LF, isSwingLF));//左前腿
            moveLeg(LEGNUM::LH, getTrajectory(startLH, endLH, m_stepHeight, i, Ts1, cishu, curLegLH_Position, LEGNUM::LH, isSwingLH));//左后腿
            moveLeg(LEGNUM::RM, getTrajectory(startRM, endRM, m_stepHeight, i, Ts1, cishu, curLegRM_Position, LEGNUM::RM, isSwingRM));//右中腿
            int ii = i+cishu/2;
            moveLeg(LEGNUM::RF, getTrajectory(endRF, startRF, m_stepHeight, ii, Ts1, cishu, curLegRF_Position, LEGNUM::RF, isSwingRF));//右前腿
            moveLeg(LEGNUM::RH, getTrajectory(endRH, startRH, m_stepHeight, ii, Ts1, cishu, curLegRH_Position, LEGNUM::RH, isSwingRH));//右后腿
            moveLeg(LEGNUM::LM, getTrajectory(endLM, startLM, m_stepHeight, ii, Ts1, cishu, curLegLM_Position, LEGNUM::LM, isSwingLM));//左中腿
            usleep(m_Tcycle * 1000000/DELAY_TIME);
        }
    }
    //正常走一个周期
    for(int i=0; i<cishu; i++)
    {
        getYawFootPosition(LEGNUM::RF, start_leg, end_leg);
        moveLeg(LEGNUM::RF, getTrajectory(end_leg, start_leg, m_stepHeight, i, Ts1, cishu, curLegRF_Position,LEGNUM::RF, isSwingRF));//右前腿
        getYawFootPosition(LEGNUM::RH,start_leg, end_leg);
        moveLeg(LEGNUM::RH, getTrajectory(end_leg, start_leg, m_stepHeight, i, Ts1, cishu, curLegRH_Position,LEGNUM::RH, isSwingRH));//右后腿
        getYawFootPosition(LEGNUM::LM,  start_leg, end_leg);
        moveLeg(LEGNUM::LM, getTrajectory(end_leg, start_leg, m_stepHeight, i, Ts1, cishu, curLegLM_Position,LEGNUM::LM, isSwingLM));//左中腿
        int ii = (i+cishu/2)%cishu;
        getYawFootPosition(LEGNUM::LF,  start_leg, end_leg);
        moveLeg(LEGNUM::LF, getTrajectory(end_leg, start_leg, m_stepHeight, ii, Ts1, cishu, curLegLF_Position,LEGNUM::LF, isSwingLF));//左前腿
        getYawFootPosition(LEGNUM::LH, start_leg, end_leg);
        moveLeg(LEGNUM::LH, getTrajectory(end_leg, start_leg, m_stepHeight, ii, Ts1, cishu, curLegLH_Position,LEGNUM::LH, isSwingLH));//左后腿
        getYawFootPosition(LEGNUM::RM, start_leg, end_leg);
        moveLeg(LEGNUM::RM, getTrajectory(end_leg, start_leg, m_stepHeight, ii, Ts1, cishu, curLegRM_Position,LEGNUM::RM, isSwingRM));//右中腿
        usleep(m_Tcycle * 1000000/DELAY_TIME);//微秒10^6s
    }
    //将走半步标志位置假
    isStart = false;
}

void Gait::yawThreeGait()
{
    int cishu = DELAY_TIME;
    //int sleepTime = m_Tcycle * 1000000 / DELAY_TIME;
    double Ts1 = cishu/3;
    if(isStart)//站立到行走走半步
    {
        hexapod_msg::footPosition endLF;
        hexapod_msg::footPosition endLM;
        hexapod_msg::footPosition endLH;
        hexapod_msg::footPosition endRF;
        hexapod_msg::footPosition endRM;
        hexapod_msg::footPosition endRH;
        endLF.x = startLF.x + m_stridX/2;
        endLF.y = startLF.y + m_stridY/2;
        endLF.z = startLF.z;
        endRM.x = startRM.x + m_stridX/2;
        endRM.y = startRM.y + m_stridY/2;
        endRM.z = startRM.z;

        endLM.x = startLM.x - m_stridX;
        endLM.y = startLM.y - m_stridY;
        endLM.z = startLM.z;
        endRH.x = startRH.x - m_stridX;
        endRH.y = startRH.y - m_stridY;
        endRH.z = startRH.z;

        endLH.x = startLH.x ;
        endLH.y = startLH.y ;
        endLH.z = startLH.z;
        endRF.x = startRF.x + m_stridX/3;
        endRF.y = startRF.y + m_stridY/3;
        endRF.z = startRF.z;
        
        for(int i=0; i<cishu/3; i++)
        {
            moveLeg(LEGNUM::LF, getTrajectory(startLF, endLF, m_stepHeight, i, Ts1, cishu, curLegLF_Position,LEGNUM::LF, isSwingLF));//左前腿
            moveLeg(LEGNUM::RM, getTrajectory(startRM, endRM, m_stepHeight, i, Ts1, cishu, curLegRM_Position,LEGNUM::RM, isSwingRM));//右中腿
            int ii = i+cishu/3;
            moveLeg(LEGNUM::RH, getTrajectory(endRH, startRH, m_stepHeight, ii, Ts1, cishu, curLegRH_Position, LEGNUM::RH, isSwingRH));//右后腿
            moveLeg(LEGNUM::LM, getTrajectory(endLM, startLM, m_stepHeight, ii, Ts1, cishu, curLegLM_Position, LEGNUM::LM, isSwingLM));//左中腿
            int iii = i+cishu/3*2;
            moveLeg(LEGNUM::LH, getTrajectory(endLH, startLH, m_stepHeight, iii, Ts1, cishu, curLegLH_Position, LEGNUM::LH, isSwingLH));//左后腿
            moveLeg(LEGNUM::RF, getTrajectory(startRF, endRF, m_stepHeight, iii, Ts1, cishu, curLegRF_Position, LEGNUM::RF, isSwingRF));//右前腿
            usleep(m_Tcycle * 1000000/DELAY_TIME);
        }
    }
    for(int i=0; i<cishu; i++)
    {
        getYawFootPosition(LEGNUM::RH, start_leg, end_leg);
        moveLeg(LEGNUM::RH, getTrajectory(end_leg, start_leg, m_stepHeight, i, Ts1, cishu, curLegRH_Position, LEGNUM::RH, isSwingRH));//右后腿
        getYawFootPosition(LEGNUM::LM, start_leg, end_leg);
        moveLeg(LEGNUM::LM, getTrajectory(end_leg, start_leg, m_stepHeight, i, Ts1, cishu, curLegLM_Position, LEGNUM::LM, isSwingLM));//左中腿
        int ii = (i+cishu/3)%cishu;
        getYawFootPosition(LEGNUM::LF,  start_leg, end_leg);
        moveLeg(LEGNUM::LF, getTrajectory(end_leg, start_leg, m_stepHeight, ii, Ts1, cishu, curLegLF_Position, LEGNUM::LF, isSwingLF));//左前腿
        getYawFootPosition(LEGNUM::RM,  start_leg, end_leg);
        moveLeg(LEGNUM::RM, getTrajectory(end_leg, start_leg, m_stepHeight, ii, Ts1, cishu, curLegRM_Position, LEGNUM::RM, isSwingRM));//右中腿
        int iii = (i+cishu/3*2)%cishu;
        getYawFootPosition(LEGNUM::RF,  start_leg, end_leg);
        moveLeg(LEGNUM::RF, getTrajectory(end_leg, start_leg, m_stepHeight, iii, Ts1, cishu, curLegRF_Position, LEGNUM::RF, isSwingRF));//右前腿
        getYawFootPosition(LEGNUM::LH, start_leg, end_leg);
        moveLeg(LEGNUM::LH, getTrajectory(end_leg, start_leg, m_stepHeight, iii, Ts1, cishu, curLegLH_Position, LEGNUM::LH, isSwingLH));//左后腿
        usleep(m_Tcycle * 1000000/DELAY_TIME);
    }
    isStart = false;
}
void Gait::yawSixGait()
{
    int cishu = DELAY_TIME;
    double Ts1 = cishu/6;
    //int sleepTime = m_Tcycle * 1000000 / DELAY_TIME;
    if(isStart)//站立到行走走半步
    {
        hexapod_msg::footPosition endLF;
        hexapod_msg::footPosition endLM;
        hexapod_msg::footPosition endLH;
        hexapod_msg::footPosition endRF;
        hexapod_msg::footPosition endRM;
        hexapod_msg::footPosition endRH;
    
        endLF.x = startLF.x+m_stridX/2;
        endLF.y = startLF.y+ m_stridY/2;
        endLF.z = startLF.z;

        endRM.x = startRM.x- m_stridX*2;
        endRM.y = startRM.y- m_stridY;
        endRM.z = startRM.z;

        endLH.x = startLH.x -m_stridX/2;
        endLH.y = startLH.y -m_stridY/2;
        endLH.z = startLH.z;
        
        endLM.x = startLM.x - m_stridX/6;
        endLM.y = startLM.y - m_stridX/6;
        endLM.z = startLM.z;

        endRH.x = startRH.x +m_stridX/6;
        endRH.y = startRH.y +m_stridY/6;
        endRH.z = startRH.z;

        endRF.x = startRF.x +m_stridX/3;
        endRF.y = startRF.y +m_stridY/3;
        endRF.z = startRF.z;
        for(int i=0; i<cishu/6; i++)
        {
            moveLeg(LEGNUM::LF, getTrajectory(startLF, endLF, m_stepHeight, i, Ts1, cishu, curLegLF_Position, LEGNUM::LF, isSwingLF));//左前腿
            int ii = (i+cishu/6)%cishu;
            moveLeg(LEGNUM::RM, getTrajectory(endRM, startRM, m_stepHeight, ii, Ts1, cishu, curLegRM_Position, LEGNUM::RM, isSwingRM));//右中腿
            int iii = (i+cishu/6*2)%cishu; 
            moveLeg(LEGNUM::LH, getTrajectory(endLH, startLH, m_stepHeight, iii, Ts1, cishu, curLegLH_Position,LEGNUM::LH, isSwingLH));//左后腿
            int iiii = (i+cishu/6*3)%cishu;
            moveLeg(LEGNUM::LM, getTrajectory(endLM, startLM, m_stepHeight, iiii, Ts1, cishu, curLegLM_Position, LEGNUM::LM, isSwingLM));//左中腿
            int iiiii = (i+cishu/6*4)%cishu;
            moveLeg(LEGNUM::RH, getTrajectory(endRH, startRH, m_stepHeight, iiiii, Ts1, cishu, curLegRH_Position, LEGNUM::RH, isSwingRH));//右后腿
            int iiiiii = (i+cishu/6*5)%cishu;
            moveLeg(LEGNUM::RF, getTrajectory(endRF, startRF, m_stepHeight, iiiiii, Ts1, cishu, curLegRF_Position, LEGNUM::RF, isSwingRF));//右前腿
            usleep(m_Tcycle * 1000000/DELAY_TIME);
        }
    }
    for(int i=0; i<cishu; i++)
    {
        getYawFootPosition(LEGNUM::RM,start_leg, end_leg);
        moveLeg(LEGNUM::RM, getTrajectory(end_leg, start_leg, m_stepHeight, i, Ts1, cishu, curLegRM_Position, LEGNUM::RM, isSwingRM));//右中腿 
        int ii = (i+cishu/6)%cishu;
        getYawFootPosition(LEGNUM::LF, start_leg, end_leg);
        moveLeg(LEGNUM::LF, getTrajectory(end_leg, start_leg, m_stepHeight, ii, Ts1, cishu, curLegLF_Position, LEGNUM::LF, isSwingLF));//左前腿
        int iii = (i+cishu/6*2)%cishu;
        getYawFootPosition(LEGNUM::RF, start_leg, end_leg);
        moveLeg(LEGNUM::RF, getTrajectory(end_leg, start_leg, m_stepHeight, iii, Ts1, cishu, curLegRF_Position, LEGNUM::RF, isSwingRF));//右前腿
        int iiii = (i+cishu/6*3)%cishu;
        getYawFootPosition(LEGNUM::RH, start_leg, end_leg);
        moveLeg(LEGNUM::RH, getTrajectory(end_leg, start_leg, m_stepHeight, iiii, Ts1, cishu, curLegRH_Position, LEGNUM::RH, isSwingRH));//右后腿
        int iiiii = (i+cishu/6*4)%cishu;
        getYawFootPosition(LEGNUM::LM, start_leg, end_leg);
        moveLeg(LEGNUM::LM, getTrajectory(end_leg, start_leg, m_stepHeight, iiiii, Ts1, cishu, curLegLM_Position, LEGNUM::LM, isSwingLM));//左中腿
        int iiiiii = (i+cishu/6*5)%cishu;
        getYawFootPosition(LEGNUM::LH, start_leg, end_leg);
        moveLeg(LEGNUM::LH, getTrajectory(end_leg, start_leg, m_stepHeight, iiiiii, Ts1, cishu, curLegLH_Position, LEGNUM::LH, isSwingLH));//左后腿
        usleep(m_Tcycle * 1000000/DELAY_TIME);
    }
    isStart = false;
}

void Gait::gaitSwitch()
{
    double fre = DELAY_TIME;
    //int sleepTime = m_Tcycle * 1000000 / DELAY_TIME;
    double sigma;
    hexapod_msg::footPosition footpositionLF;
    hexapod_msg::footPosition footpositionLM;
    hexapod_msg::footPosition footpositionLH;
    hexapod_msg::footPosition footpositionRF;
    hexapod_msg::footPosition footpositionRM;
    hexapod_msg::footPosition footpositionRH;

    hexapod_msg::legAngle legangleLF;
    hexapod_msg::legAngle legangleLM;
    hexapod_msg::legAngle legangleLH;
    hexapod_msg::legAngle legangleRF;
    hexapod_msg::legAngle legangleRM;
    hexapod_msg::legAngle legangleRH;

    startLF.x = (L1+L2)*cos(INCLUDE_ANGLE) + m_PosX;
    startLF.y = (L1+L2)*sin(INCLUDE_ANGLE) + m_PosY;
    startLF.z = -m_bodyHeight + sin(m_roll/180.0*M_PI) * (BODY_WIDTH_SMALL/2+(L1+L2)*sin(INCLUDE_ANGLE)) + sin(m_pitch/180.0*M_PI)*(BODY_LENGTH/2+(L1+L2)*cos(INCLUDE_ANGLE));
    startLM.x =  m_PosX;
    startLM.y = (L1+L2) + m_PosY;
    startLM.z = -m_bodyHeight+ sin(m_roll/180.0*M_PI) * (BODY_WIDTH_LARGE/2+L1+L2); 
    startLH.x = -(L1+L2)*cos(INCLUDE_ANGLE) + m_PosX;
    startLH.y = (L1+L2)*sin(INCLUDE_ANGLE) + m_PosY;
    startLH.z = -m_bodyHeight + sin(m_roll/180.0*M_PI) * (BODY_WIDTH_SMALL/2+(L1+L2)*sin(INCLUDE_ANGLE)) - sin(m_pitch/180.0*M_PI)*(BODY_LENGTH/2+(L1+L2)*cos(INCLUDE_ANGLE));
    startRF.x = (L1+L2)*cos(INCLUDE_ANGLE) + m_PosX;
    startRF.y = -(L1+L2)*sin(INCLUDE_ANGLE) + m_PosY;
    startRF.z = -m_bodyHeight- sin(m_roll/180.0*M_PI) * (BODY_WIDTH_SMALL/2+(L1+L2)*sin(INCLUDE_ANGLE)) + sin(m_pitch/180.0*M_PI)*(BODY_LENGTH/2+(L1+L2)*cos(INCLUDE_ANGLE));
    startRM.x =  m_PosX;
    startRM.y = -(L1+L2) + m_PosY;
    startRM.z = -m_bodyHeight - sin(m_roll/180.0*M_PI) * (BODY_WIDTH_LARGE/2+L1+L2);
    startRH.x = -(L1+L2)*cos(INCLUDE_ANGLE) + m_PosX;
    startRH.y = -(L1+L2)*sin(INCLUDE_ANGLE) + m_PosY;
    startRH.z = -m_bodyHeight- sin(m_roll/180.0*M_PI) * (BODY_WIDTH_SMALL/2+(L1+L2)*sin(INCLUDE_ANGLE)) - sin(m_pitch/180.0*M_PI)*(BODY_LENGTH/2+(L1+L2)*cos(INCLUDE_ANGLE)); 
   
    //135腿归位
    for(int i=0; i<fre; i++)
    {
        sigma = 2*M_PI*i/fre;
        footpositionLF.x = (startLF.x-curLegLF_Position.x)*((sigma-sin(sigma))/(2*M_PI))+curLegLF_Position.x;
        footpositionLF.y = (startLF.y-curLegLF_Position.y)*((sigma-sin(sigma))/(2*M_PI))+curLegLF_Position.y;
        footpositionLF.z = m_stepHeight*(1-cos(sigma))/2+startLF.z;
        ikine(footpositionLF, legangleLF, LEGNUM::LF);
        
        footpositionLH.x = (startLH.x-curLegLH_Position.x)*((sigma-sin(sigma))/(2*M_PI))+curLegLH_Position.x;
        footpositionLH.y = (startLH.y-curLegLH_Position.y)*((sigma-sin(sigma))/(2*M_PI))+curLegLH_Position.y;
        footpositionLH.z = m_stepHeight*(1-cos(sigma))/2+startLH.z;
        ikine(footpositionLH, legangleLH, LEGNUM::LH);

        footpositionRM.x = (startRM.x-curLegRM_Position.x)*((sigma-sin(sigma))/(2*M_PI))+curLegRM_Position.x;
        footpositionRM.y = (startRM.y-curLegRM_Position.y)*((sigma-sin(sigma))/(2*M_PI))+curLegRM_Position.y;
        footpositionRM.z = m_stepHeight*(1-cos(sigma))/2+startRM.z;
        ikine(footpositionRM, legangleRM, LEGNUM::RM);
        // legangleRM.Angle1 = -legangleRM.Angle1;
        moveLeg(LEGNUM::LF,legangleLF);
        moveLeg(LEGNUM::LH,legangleLH);
        moveLeg(LEGNUM::RM,legangleRM);
        usleep(m_Tcycle * 1000000/DELAY_TIME/2);
    }
    curLegLF_Position.x = footpositionLF.x;
    curLegLF_Position.y = footpositionLF.y;
    curLegLF_Position.z = footpositionLF.z;
    curLegLH_Position.x = footpositionLH.x;
    curLegLH_Position.y = footpositionLH.y;
    curLegLH_Position.z = footpositionLH.z;
    curLegRM_Position.x = footpositionRM.x;
    curLegRM_Position.y = footpositionRM.y;
    curLegRM_Position.z = footpositionRM.z;
    //246腿归位
    for(int i=0; i<fre; i++)
    {
        sigma = 2*M_PI*i/fre;
        footpositionRF.x = (startRF.x-curLegRF_Position.x)*((sigma-sin(sigma))/(2*M_PI))+curLegRF_Position.x;
        footpositionRF.y = (startRF.y-curLegRF_Position.y)*((sigma-sin(sigma))/(2*M_PI))+curLegRF_Position.y;
        footpositionRF.z = m_stepHeight*(1-cos(sigma))/2+startRF.z;
        ikine(footpositionRF, legangleRF, LEGNUM::RF);
        
        footpositionRH.x = (startRH.x-curLegRH_Position.x)*((sigma-sin(sigma))/(2*M_PI))+curLegRH_Position.x;
        footpositionRH.y = (startRH.y-curLegRH_Position.y)*((sigma-sin(sigma))/(2*M_PI))+curLegRH_Position.y;
        footpositionRH.z = m_stepHeight*(1-cos(sigma))/2+startRH.z;
        ikine(footpositionRH, legangleRH, LEGNUM::RH);

        footpositionLM.x = (startLM.x-curLegLM_Position.x)*((sigma-sin(sigma))/(2*M_PI))+curLegLM_Position.x;
        footpositionLM.y = (startLM.y-curLegLM_Position.y)*((sigma-sin(sigma))/(2*M_PI))+curLegLM_Position.y;
        footpositionLM.z = m_stepHeight*(1-cos(sigma))/2+startLM.z;
        ikine(footpositionLM, legangleLM,LEGNUM::LM);
        // legangleRF.Angle1 = -legangleRF.Angle1;
        // legangleRH.Angle1 = -legangleRH.Angle1;
        moveLeg(LEGNUM::LM,legangleLM);
        moveLeg(LEGNUM::RH,legangleRH);
        moveLeg(LEGNUM::RF,legangleRF);
        usleep(m_Tcycle * 1000000/DELAY_TIME/2);
    }
    curLegRF_Position.x = footpositionRF.x;
    curLegRF_Position.y = footpositionRF.y;
    curLegRF_Position.z = footpositionRF.z;
    curLegRH_Position.x = footpositionRH.x;
    curLegRH_Position.y = footpositionRH.y;
    curLegRH_Position.z = footpositionRH.z;
    curLegLM_Position.x = footpositionLM.x;
    curLegLM_Position.y = footpositionLM.y;
    curLegLM_Position.z = footpositionLM.z;

    isStart = true;
}

void Gait::guoGouGait(double x_1, double x_2, double x_3, double x_4, double x_5, double x_6, double x_7, double x_8, 
    double x_9, double x_10, double x_11)
{
    int cishu = DELAY_TIME;
    //int sleepTime = m_Tcycle * 1000000/DELAY_TIME;
    double Ts1 = cishu/2;

    /*-----------------------1.机身前移x1-------------------------------------------------*/
    // double x1 = 0.4;
    // double x1 = 0.4;
    double x1 = x_1;

    hexapod_msg::footPosition endLFPos, startLFPos, endLMPos, startLMPos, endLHPos, startLHPos, endRFPos, startRFPos, endRMPos, startRMPos, endRHPos, startRHPos;
    startLHPos.x = curLegLH_Position.x - x1;
    startLHPos.y = curLegLH_Position.y;
    startLHPos.z = curLegLH_Position.z;
    endLHPos = curLegLH_Position;

    startLMPos.x = curLegLM_Position.x - x1;
    startLMPos.y = curLegLM_Position.y;
    startLMPos.z = curLegLM_Position.z;
    endLMPos = curLegLM_Position;

    startLFPos.x = curLegLF_Position.x - x1;
    startLFPos.y = curLegLF_Position.y;
    startLFPos.z = curLegLF_Position.z;
    endLFPos = curLegLF_Position;

    startRHPos.x = curLegRH_Position.x - x1;
    startRHPos.y = curLegRH_Position.y;
    startRHPos.z = curLegRH_Position.z;
    endRHPos = curLegRH_Position;

    startRMPos.x = curLegRM_Position.x - x1;
    startRMPos.y = curLegRM_Position.y;
    startRMPos.z = curLegRM_Position.z;
    endRMPos = curLegRM_Position;

    startRFPos.x = curLegRF_Position.x - x1;
    startRFPos.y = curLegRF_Position.y;
    startRFPos.z = curLegRF_Position.z;
    endRFPos = curLegRF_Position;
    
    for(int i=0; i<cishu/2; i++)
    {
        int ii = i+cishu/2;
        moveLeg(LEGNUM::LH, getTrajectory(startLHPos,endLHPos,this->m_stepHeight,ii,Ts1,cishu,curLegLH_Position, LEGNUM::LH, isSwingLH));
        moveLeg(LEGNUM::RH, getTrajectory(startRHPos,endRHPos,this->m_stepHeight,ii,Ts1,cishu,curLegRH_Position, LEGNUM::RH, isSwingRH));
        moveLeg(LEGNUM::LM, getTrajectory(startLMPos,endLMPos,this->m_stepHeight,ii,Ts1,cishu,curLegLM_Position, LEGNUM::LM, isSwingLM));
        moveLeg(LEGNUM::RM, getTrajectory(startRMPos,endRMPos,this->m_stepHeight,ii,Ts1,cishu,curLegRM_Position, LEGNUM::RM, isSwingRM));
        moveLeg(LEGNUM::LF, getTrajectory(startLFPos,endLFPos,this->m_stepHeight,ii,Ts1,cishu,curLegLF_Position, LEGNUM::LF, isSwingLF));
        moveLeg(LEGNUM::RF, getTrajectory(startRFPos,endRFPos,this->m_stepHeight,ii,Ts1,cishu,curLegRF_Position, LEGNUM::RF, isSwingRF));
        usleep(m_Tcycle * 1000000/DELAY_TIME/2);
    }

    /*--------------------------2.后腿向前摆动到中腿位置-------------------------------------*/
    startLFPos = curLegLF_Position;
    endLFPos = curLegLF_Position;
    startRFPos = curLegRF_Position;
    endRFPos = curLegRF_Position;

    startLMPos = curLegLM_Position;
    startRMPos = curLegRM_Position;
    endLMPos = curLegLM_Position;
    endRMPos = curLegRM_Position;

    startLHPos = curLegLH_Position;
    startRHPos = curLegRH_Position;
    endLHPos.x = curLegLH_Position.x + BODY_LENGTH/2 + (L1+L2)*cos(INCLUDE_ANGLE);
    endLHPos.y = curLegLH_Position.y;
    endLHPos.z = curLegLH_Position.z;
    endRHPos.x = curLegRH_Position.x + BODY_LENGTH/2 + (L1+L2)*cos(INCLUDE_ANGLE);
    endRHPos.y = curLegRH_Position.y;
    endRHPos.z = curLegRH_Position.z;


    for(int i=0; i<cishu/2; i++)
    {
        moveLeg(LEGNUM::LH, getTrajectory(startLHPos,endLHPos,this->m_stepHeight,i,Ts1,cishu,curLegLH_Position, LEGNUM::LH, isSwingLH));
        moveLeg(LEGNUM::RH, getTrajectory(startRHPos,endRHPos,this->m_stepHeight,i,Ts1,cishu,curLegRH_Position, LEGNUM::RH, isSwingRH));
        int ii = i+cishu/2;
        moveLeg(LEGNUM::LM, getTrajectory(startLMPos,endLMPos,this->m_stepHeight,ii,Ts1,cishu,curLegLM_Position, LEGNUM::LM, isSwingLM));
        moveLeg(LEGNUM::RM, getTrajectory(startRMPos,endRMPos,this->m_stepHeight,ii,Ts1,cishu,curLegRM_Position, LEGNUM::RM, isSwingRM));
        moveLeg(LEGNUM::LF, getTrajectory(startLFPos,endLFPos,this->m_stepHeight,ii,Ts1,cishu,curLegLF_Position, LEGNUM::LF, isSwingLF));
        moveLeg(LEGNUM::RF, getTrajectory(startRFPos,endRFPos,this->m_stepHeight,ii,Ts1,cishu,curLegRF_Position, LEGNUM::RF, isSwingRF));
        usleep(m_Tcycle * 1000000/DELAY_TIME/2);
    }

    /*--------------------------3.中腿向前摆动到前腿位置-------------------------------------*/
    startLFPos = curLegLF_Position;
    endLFPos = curLegLF_Position;
    startRFPos = curLegRF_Position;
    endRFPos = curLegRF_Position;

    startLHPos = curLegLH_Position;
    startRHPos = curLegRH_Position;
    endLHPos = curLegLH_Position;
    endRHPos = curLegRH_Position;

    startLMPos = curLegLM_Position;
    startRMPos = curLegRM_Position;
    endLMPos.x = curLegLM_Position.x + BODY_LENGTH/2 + (L1+L2)*cos(INCLUDE_ANGLE);
    endLMPos.y = curLegLM_Position.y;
    endLMPos.z = curLegLM_Position.z;
    endRMPos.x = curLegRM_Position.x + BODY_LENGTH/2 + (L1+L2)*cos(INCLUDE_ANGLE);
    endRMPos.y = curLegRM_Position.y;
    endRMPos.z = curLegRM_Position.z;

    for(int i=0; i<cishu/2; i++)
    {
        moveLeg(LEGNUM::LM, getTrajectory(startLMPos,endLMPos,this->m_stepHeight,i,Ts1,cishu,curLegLM_Position, LEGNUM::LM, isSwingLM));
        moveLeg(LEGNUM::RM, getTrajectory(startRMPos,endRMPos,this->m_stepHeight,i,Ts1,cishu,curLegRM_Position, LEGNUM::RM, isSwingRM));
        int ii = i+cishu/2;
        moveLeg(LEGNUM::LH, getTrajectory(startLHPos,endLHPos,this->m_stepHeight,ii,Ts1,cishu,curLegLH_Position, LEGNUM::LH, isSwingLH));
        moveLeg(LEGNUM::RH, getTrajectory(startRHPos,endRHPos,this->m_stepHeight,ii,Ts1,cishu,curLegRH_Position, LEGNUM::RH, isSwingRH));
        moveLeg(LEGNUM::LF, getTrajectory(startLFPos,endLFPos,this->m_stepHeight,ii,Ts1,cishu,curLegLF_Position, LEGNUM::LF, isSwingLF));
        moveLeg(LEGNUM::RF, getTrajectory(startRFPos,endRFPos,this->m_stepHeight,ii,Ts1,cishu,curLegRF_Position, LEGNUM::RF, isSwingRF));
        usleep(m_Tcycle * 1000000/DELAY_TIME/2);
    }

    /*--------------------------4.前腿向前摆动x2 机身前移x3 保证x2+x3大于沟的宽度-------------------------------------*/
    // double x2=0.5, x3= 0.8;
    // double x2=0.4, x3= 0.8;
    double x2=x_2, x3= x_3;
    startLFPos = curLegLF_Position;
    endLFPos.x = curLegLF_Position.x + x2;
    endLFPos.y = curLegLF_Position.y;
    endLFPos.z = curLegLF_Position.z;
    startRFPos = curLegRF_Position;
    endRFPos.x = curLegRF_Position.x + x2;
    endRFPos.y = curLegRF_Position.y;
    endRFPos.z = curLegRF_Position.z;

    startLHPos.x = curLegLH_Position.x - x3;
    startLHPos.y = curLegLH_Position.y;
    startLHPos.z = curLegLH_Position.z;
    endLHPos = curLegLH_Position;
    startRHPos.x = curLegRH_Position.x - x3;
    startRHPos.y = curLegRH_Position.y;
    startRHPos.z = curLegRH_Position.z;
    endRHPos = curLegRH_Position;

    startLMPos.x = curLegLM_Position.x - x3;
    startLMPos.y = curLegLM_Position.y;
    startLMPos.z = curLegLM_Position.z;
    endLMPos = curLegLM_Position;
    startRMPos.x = curLegRM_Position.x - x3;
    startRMPos.y = curLegRM_Position.y;
    startRMPos.z = curLegRM_Position.z;
    endRMPos = curLegRM_Position;

    for(int i=0; i<cishu/2; i++)
    {
        moveLeg(LEGNUM::LF, getTrajectory(startLFPos,endLFPos,this->m_stepHeight,i,Ts1,cishu,curLegLF_Position, LEGNUM::LF, isSwingLF));
        moveLeg(LEGNUM::RF, getTrajectory(startRFPos,endRFPos,this->m_stepHeight,i,Ts1,cishu,curLegRF_Position, LEGNUM::RF, isSwingRF));
        int ii = i+cishu/2;
        moveLeg(LEGNUM::LH, getTrajectory(startLHPos,endLHPos,this->m_stepHeight,ii,Ts1,cishu,curLegLH_Position, LEGNUM::LH, isSwingLH));
        moveLeg(LEGNUM::RH, getTrajectory(startRHPos,endRHPos,this->m_stepHeight,ii,Ts1,cishu,curLegRH_Position, LEGNUM::RH, isSwingRH));
        moveLeg(LEGNUM::LM, getTrajectory(startLMPos,endLMPos,this->m_stepHeight,ii,Ts1,cishu,curLegLM_Position, LEGNUM::LM, isSwingLM));
        moveLeg(LEGNUM::RM, getTrajectory(startRMPos,endRMPos,this->m_stepHeight,ii,Ts1,cishu,curLegRM_Position, LEGNUM::RM, isSwingRM));
        usleep(m_Tcycle * 1000000/DELAY_TIME/2);
    }

    /*--------------------------5.后退向前摆动到中腿位置-------------------------------------*/
    startLFPos = curLegLF_Position;
    endLFPos = curLegLF_Position;
    startRFPos = curLegRF_Position;
    endRFPos = curLegRF_Position;

    startLMPos = curLegLM_Position;
    startRMPos = curLegRM_Position;
    endLMPos = curLegLM_Position;
    endRMPos = curLegRM_Position;

    startLHPos = curLegLH_Position;
    startRHPos = curLegRH_Position;
    endLHPos.x = BODY_LENGTH/2 + curLegLM_Position.x;
    // endLHPos.x = curLegLH_Position.x + BODY_LENGTH/2 + (L1+L2)*cos(INCLUDE_ANGLE) ;
    endLHPos.y = curLegLH_Position.y;
    endLHPos.z = curLegLH_Position.z;
    endRHPos.x = BODY_LENGTH/2 + curLegRM_Position.x;
    // endRHPos.x = curLegRH_Position.x + BODY_LENGTH/2 + (L1+L2)*cos(INCLUDE_ANGLE) ;
    endRHPos.y = curLegRH_Position.y;
    endRHPos.z = curLegRH_Position.z;

    for(int i=0; i<cishu/2; i++)
    {
        moveLeg(LEGNUM::LH, getTrajectory(startLHPos,endLHPos,this->m_stepHeight,i,Ts1,cishu,curLegLH_Position, LEGNUM::LH, isSwingLH));
        moveLeg(LEGNUM::RH, getTrajectory(startRHPos,endRHPos,this->m_stepHeight,i,Ts1,cishu,curLegRH_Position, LEGNUM::RH, isSwingRH));
        int ii = i+cishu/2;
        moveLeg(LEGNUM::LM, getTrajectory(startLMPos,endLMPos,this->m_stepHeight,ii,Ts1,cishu,curLegLM_Position, LEGNUM::LM, isSwingLM));
        moveLeg(LEGNUM::RM, getTrajectory(startRMPos,endRMPos,this->m_stepHeight,ii,Ts1,cishu,curLegRM_Position, LEGNUM::RM, isSwingRM));
        moveLeg(LEGNUM::LF, getTrajectory(startLFPos,endLFPos,this->m_stepHeight,ii,Ts1,cishu,curLegLF_Position, LEGNUM::LF, isSwingLF));
        moveLeg(LEGNUM::RF, getTrajectory(startRFPos,endRFPos,this->m_stepHeight,ii,Ts1,cishu,curLegRF_Position, LEGNUM::RF, isSwingRF));
        usleep(m_Tcycle * 1000000/DELAY_TIME/2);
    }

    /*--------------------------6.中腿向前摆动x4 机身前移x5 保证x4+x5大于沟的宽度-------------------------------------*/
    // double x4=0.8, x5= 0.5;
    // double x4=0.7, x5= 0.5;
    double x4=x_4, x5= x_5;

    startLMPos = curLegLM_Position;
    endLMPos.x = curLegLM_Position.x + x4;
    endLMPos.y = curLegLM_Position.y;
    endLMPos.z = curLegLM_Position.z;
    startRMPos = curLegRM_Position;
    endRMPos.x = curLegRM_Position.x + x4;
    endRMPos.y = curLegRM_Position.y;
    endRMPos.z = curLegRM_Position.z;

    startLHPos.x = curLegLH_Position.x - x5;
    startLHPos.y = curLegLH_Position.y;
    startLHPos.z = curLegLH_Position.z;
    endLHPos = curLegLH_Position;
    startRHPos.x = curLegRH_Position.x - x5;
    startRHPos.y = curLegRH_Position.y;
    startRHPos.z = curLegRH_Position.z;
    endRHPos = curLegRH_Position;

    startLFPos.x = curLegLF_Position.x - x5;
    startLFPos.y = curLegLF_Position.y;
    startLFPos.z = curLegLF_Position.z;
    endLFPos = curLegLF_Position;
    startRFPos.x = curLegRF_Position.x - x5;
    startRFPos.y = curLegRF_Position.y;
    startRFPos.z = curLegRF_Position.z;
    endRFPos = curLegRF_Position;

    for(int i=0; i<cishu/2; i++)
    {
        moveLeg(LEGNUM::LM, getTrajectory(startLMPos,endLMPos,this->m_stepHeight,i,Ts1,cishu,curLegLM_Position, LEGNUM::LM, isSwingLM));
        moveLeg(LEGNUM::RM, getTrajectory(startRMPos,endRMPos,this->m_stepHeight,i,Ts1,cishu,curLegRM_Position, LEGNUM::RM, isSwingRM));
        int ii = i+cishu/2;
        moveLeg(LEGNUM::LF, getTrajectory(startLFPos,endLFPos,this->m_stepHeight,ii,Ts1,cishu,curLegLF_Position, LEGNUM::LF, isSwingLF));
        moveLeg(LEGNUM::RF, getTrajectory(startRFPos,endRFPos,this->m_stepHeight,ii,Ts1,cishu,curLegRF_Position, LEGNUM::RF, isSwingRF));
        moveLeg(LEGNUM::LH, getTrajectory(startLHPos,endLHPos,this->m_stepHeight,ii,Ts1,cishu,curLegLH_Position, LEGNUM::LH, isSwingLH));
        moveLeg(LEGNUM::RH, getTrajectory(startRHPos,endRHPos,this->m_stepHeight,ii,Ts1,cishu,curLegRH_Position, LEGNUM::RH, isSwingRH));
        usleep(m_Tcycle * 1000000/DELAY_TIME/2);
    }

    /*--------------------------7.前腿向前摆动x6 机身前移x7 -------------------------------------*/
    // double x6=0.5, x7= 0.5;
    // double x6=0.4, x7= 0.5;
    double x6=x_6, x7= x_7;
    startLFPos = curLegLF_Position;
    endLFPos.x = curLegLF_Position.x + x6;
    endLFPos.y = curLegLF_Position.y;
    endLFPos.z = curLegLF_Position.z;
    startRFPos = curLegRF_Position;
    endRFPos.x = curLegRF_Position.x + x6;
    endRFPos.y = curLegRF_Position.y;
    endRFPos.z = curLegRF_Position.z;

    startLHPos.x = curLegLH_Position.x - x7;
    startLHPos.y = curLegLH_Position.y;
    startLHPos.z = curLegLH_Position.z;
    endLHPos = curLegLH_Position;
    startRHPos.x = curLegRH_Position.x - x7;
    startRHPos.y = curLegRH_Position.y;
    startRHPos.z = curLegRH_Position.z;
    endRHPos = curLegRH_Position;

    startLMPos.x = curLegLM_Position.x - x7;
    startLMPos.y = curLegLM_Position.y;
    startLMPos.z = curLegLM_Position.z;
    endLMPos = curLegLM_Position;
    startRMPos.x = curLegRM_Position.x - x7;
    startRMPos.y = curLegRM_Position.y;
    startRMPos.z = curLegRM_Position.z;
    endRMPos = curLegRM_Position;

    for(int i=0; i<cishu/2; i++)
    {
        moveLeg(LEGNUM::LF, getTrajectory(startLFPos,endLFPos,this->m_stepHeight,i,Ts1,cishu,curLegLF_Position, LEGNUM::LF, isSwingLF));
        moveLeg(LEGNUM::RF, getTrajectory(startRFPos,endRFPos,this->m_stepHeight,i,Ts1,cishu,curLegRF_Position, LEGNUM::RF, isSwingRF));
        int ii = i+cishu/2;
        moveLeg(LEGNUM::LH, getTrajectory(startLHPos,endLHPos,this->m_stepHeight,ii,Ts1,cishu,curLegLH_Position, LEGNUM::LH, isSwingLH));
        moveLeg(LEGNUM::RH, getTrajectory(startRHPos,endRHPos,this->m_stepHeight,ii,Ts1,cishu,curLegRH_Position, LEGNUM::RH, isSwingRH));
        moveLeg(LEGNUM::LM, getTrajectory(startLMPos,endLMPos,this->m_stepHeight,ii,Ts1,cishu,curLegLM_Position, LEGNUM::LM, isSwingLM));
        moveLeg(LEGNUM::RM, getTrajectory(startRMPos,endRMPos,this->m_stepHeight,ii,Ts1,cishu,curLegRM_Position, LEGNUM::RM, isSwingRM));
        usleep(m_Tcycle * 1000000/DELAY_TIME/2);
    }

    /*--------------------------8.后腿向前摆动x8 机身前移x9 保证x8+x9大于沟的宽度-------------------------------------*/
    // double x8=0.8, x9= 0.5;
    // double x8=0.7, x9= 0.5;
    double x8=x_8, x9= x_9;
    startLHPos = curLegLH_Position;
    endLHPos.x = curLegLH_Position.x + x8;
    endLHPos.y = curLegLH_Position.y;
    endLHPos.z = curLegLH_Position.z;
    startRHPos = curLegRH_Position;
    endRHPos.x = curLegRH_Position.x + x8;
    endRHPos.y = curLegRH_Position.y;
    endRHPos.z = curLegRH_Position.z;

    startLMPos.x = curLegLM_Position.x - x9;
    startLMPos.y = curLegLM_Position.y;
    startLMPos.z = curLegLM_Position.z;
    endLMPos = curLegLM_Position;
    startRMPos.x = curLegRM_Position.x - x9;
    startRMPos.y = curLegRM_Position.y;
    startRMPos.z = curLegRM_Position.z;
    endRMPos = curLegRM_Position;

    startLFPos.x = curLegLF_Position.x - x9;
    startLFPos.y = curLegLF_Position.y;
    startLFPos.z = curLegLF_Position.z;
    endLFPos = curLegLF_Position;
    startRFPos.x = curLegRF_Position.x - x9;
    startRFPos.y = curLegRF_Position.y;
    startRFPos.z = curLegRF_Position.z;
    endRFPos = curLegRF_Position;

    for(int i=0; i<cishu/2; i++)
    {
        moveLeg(LEGNUM::LH, getTrajectory(startLHPos,endLHPos,this->m_stepHeight,i,Ts1,cishu,curLegLH_Position, LEGNUM::LH, isSwingLH));
        moveLeg(LEGNUM::RH, getTrajectory(startRHPos,endRHPos,this->m_stepHeight,i,Ts1,cishu,curLegRH_Position, LEGNUM::RH, isSwingRH));
        int ii = i+cishu/2;
        moveLeg(LEGNUM::LF, getTrajectory(startLFPos,endLFPos,this->m_stepHeight,ii,Ts1,cishu,curLegLF_Position, LEGNUM::LF, isSwingLF));
        moveLeg(LEGNUM::RF, getTrajectory(startRFPos,endRFPos,this->m_stepHeight,ii,Ts1,cishu,curLegRF_Position, LEGNUM::RF, isSwingRF));
        moveLeg(LEGNUM::LM, getTrajectory(startLMPos,endLMPos,this->m_stepHeight,ii,Ts1,cishu,curLegLM_Position, LEGNUM::LM, isSwingLM));
        moveLeg(LEGNUM::RM, getTrajectory(startRMPos,endRMPos,this->m_stepHeight,ii,Ts1,cishu,curLegRM_Position, LEGNUM::RM, isSwingRM));
        usleep(m_Tcycle * 1000000/DELAY_TIME/2);
    }

    /*--------------------------9.中腿向前摆动到前腿位置-------------------------------------*/
    startLFPos = curLegLF_Position;
    endLFPos = curLegLF_Position;
    startRFPos = curLegRF_Position;
    endRFPos = curLegRF_Position;

    startLHPos = curLegLH_Position;
    startRHPos = curLegRH_Position;
    endLHPos = curLegLH_Position;
    endRHPos = curLegRH_Position;

    startLMPos = curLegLM_Position;
    startRMPos = curLegRM_Position;
    endLMPos.x = curLegLM_Position.x + BODY_LENGTH/2 + (L1+L2)*cos(INCLUDE_ANGLE);
    endLMPos.y = curLegLM_Position.y;
    endLMPos.z = curLegLM_Position.z;
    endRMPos.x = curLegRM_Position.x + BODY_LENGTH/2 + (L1+L2)*cos(INCLUDE_ANGLE);
    endRMPos.y = curLegRM_Position.y;
    endRMPos.z = curLegRM_Position.z;

    for(int i=0; i<cishu/2; i++)
    {
        moveLeg(LEGNUM::LM, getTrajectory(startLMPos,endLMPos,this->m_stepHeight,i,Ts1,cishu,curLegLM_Position, LEGNUM::LM, isSwingLM));
        moveLeg(LEGNUM::RM, getTrajectory(startRMPos,endRMPos,this->m_stepHeight,i,Ts1,cishu,curLegRM_Position, LEGNUM::RM, isSwingRM));
        int ii = i+cishu/2;
        moveLeg(LEGNUM::LH, getTrajectory(startLHPos,endLHPos,this->m_stepHeight,ii,Ts1,cishu,curLegLH_Position, LEGNUM::LH, isSwingLH));
        moveLeg(LEGNUM::RH, getTrajectory(startRHPos,endRHPos,this->m_stepHeight,ii,Ts1,cishu,curLegRH_Position, LEGNUM::RH, isSwingRH));
        moveLeg(LEGNUM::LF, getTrajectory(startLFPos,endLFPos,this->m_stepHeight,ii,Ts1,cishu,curLegLF_Position, LEGNUM::LF, isSwingLF));
        moveLeg(LEGNUM::RF, getTrajectory(startRFPos,endRFPos,this->m_stepHeight,ii,Ts1,cishu,curLegRF_Position, LEGNUM::RF, isSwingRF));
        usleep(m_Tcycle * 1000000/DELAY_TIME/2);
    }

    /*--------------------------10.前腿向前摆动x10 机身前移x11 -------------------------------------*/
    // double x10=0.5, x11= 0.5;
    // double x10=0.4, x11= 0.5;
    double x10=x_10, x11= x_11;
    startLFPos = curLegLF_Position;
    endLFPos.x = curLegLF_Position.x + x10;
    endLFPos.y = curLegLF_Position.y;
    endLFPos.z = curLegLF_Position.z;
    startRFPos = curLegRF_Position;
    endRFPos.x = curLegRF_Position.x + x10;
    endRFPos.y = curLegRF_Position.y;
    endRFPos.z = curLegRF_Position.z;

    startLHPos.x = curLegLH_Position.x - x11;
    startLHPos.y = curLegLH_Position.y;
    startLHPos.z = curLegLH_Position.z;
    endLHPos = curLegLH_Position;
    startRHPos.x = curLegRH_Position.x - x11;
    startRHPos.y = curLegRH_Position.y;
    startRHPos.z = curLegRH_Position.z;
    endRHPos = curLegRH_Position;

    startLMPos.x = curLegLM_Position.x - x11;
    startLMPos.y = curLegLM_Position.y;
    startLMPos.z = curLegLM_Position.z;
    endLMPos = curLegLM_Position;
    startRMPos.x = curLegRM_Position.x - x11;
    startRMPos.y = curLegRM_Position.y;
    startRMPos.z = curLegRM_Position.z;
    endRMPos = curLegRM_Position;

    for(int i=0; i<cishu/2; i++)
    {
        moveLeg(LEGNUM::LF, getTrajectory(startLFPos,endLFPos,this->m_stepHeight,i,Ts1,cishu,curLegLF_Position, LEGNUM::LF, isSwingLF));
        moveLeg(LEGNUM::RF, getTrajectory(startRFPos,endRFPos,this->m_stepHeight,i,Ts1,cishu,curLegRF_Position, LEGNUM::RF, isSwingRF));
        int ii = i+cishu/2;
        moveLeg(LEGNUM::LH, getTrajectory(startLHPos,endLHPos,this->m_stepHeight,ii,Ts1,cishu,curLegLH_Position, LEGNUM::LH, isSwingLH));
        moveLeg(LEGNUM::RH, getTrajectory(startRHPos,endRHPos,this->m_stepHeight,ii,Ts1,cishu,curLegRH_Position, LEGNUM::RH, isSwingRH));
        moveLeg(LEGNUM::LM, getTrajectory(startLMPos,endLMPos,this->m_stepHeight,ii,Ts1,cishu,curLegLM_Position, LEGNUM::LM, isSwingLM));
        moveLeg(LEGNUM::RM, getTrajectory(startRMPos,endRMPos,this->m_stepHeight,ii,Ts1,cishu,curLegRM_Position, LEGNUM::RM, isSwingRM));
        usleep(m_Tcycle * 1000000/DELAY_TIME/2);
    }
}

void Gait::setLeftAndRightLook(double val)
{
    g_rosTool->RosPubFake(val);
}
void Gait::setUpAndDownLook(double val)
{
    g_rosTool->RosPubKinectCamera(val);
}

void Gait::menualGait()
{
    hexapod_msg::legAngle angel;
    if(this->m_menual_isSelectLF)
    {
        curLegLF_Position.x = curLegLF_Position.x + m_menual_del_footPosition_x;
        curLegLF_Position.y = curLegLF_Position.y + m_menual_del_footPosition_y;
        curLegLF_Position.z = curLegLF_Position.z + m_menual_del_footPosition_z;
        ikine(curLegLF_Position,angel, LEGNUM::LF);
        moveLeg(LEGNUM::LF,angel);
    }
    if(this->m_menual_isSelectLM)
    {
        curLegLM_Position.x = curLegLM_Position.x + m_menual_del_footPosition_x;
        curLegLM_Position.y = curLegLM_Position.y + m_menual_del_footPosition_y;
        curLegLM_Position.z = curLegLM_Position.z + m_menual_del_footPosition_z;
        ikine(curLegLM_Position,angel, LEGNUM::LM);
        moveLeg(LEGNUM::LM,angel);
    }
    if(this->m_menual_isSelectLH)
    {
        curLegLH_Position.x = curLegLH_Position.x + m_menual_del_footPosition_x;
        curLegLH_Position.y = curLegLH_Position.y + m_menual_del_footPosition_y;
        curLegLH_Position.z = curLegLH_Position.z + m_menual_del_footPosition_z;
        ikine(curLegLH_Position,angel, LEGNUM::LH);
        moveLeg(LEGNUM::LH,angel);
    }
    if(this->m_menual_isSelectRF)
    {
        curLegRF_Position.x = curLegRF_Position.x + m_menual_del_footPosition_x;
        curLegRF_Position.y = curLegRF_Position.y + m_menual_del_footPosition_y;
        curLegRF_Position.z = curLegRF_Position.z + m_menual_del_footPosition_z;
        ikine(curLegRF_Position,angel, LEGNUM::RF);
        moveLeg(LEGNUM::RF,angel);
    }
    if(this->m_menual_isSelectRM)
    {
        curLegRM_Position.x = curLegRM_Position.x + m_menual_del_footPosition_x;
        curLegRM_Position.y = curLegRM_Position.y + m_menual_del_footPosition_y;
        curLegRM_Position.z = curLegRM_Position.z + m_menual_del_footPosition_z;
        ikine(curLegRM_Position,angel, LEGNUM::RM);
        moveLeg(LEGNUM::RM,angel);
    }
    if(this->m_menual_isSelectRH)
    {
        curLegRH_Position.x = curLegRH_Position.x + m_menual_del_footPosition_x;
        curLegRH_Position.y = curLegRH_Position.y + m_menual_del_footPosition_y;
        curLegRH_Position.z = curLegRH_Position.z + m_menual_del_footPosition_z;
        ikine(curLegRH_Position,angel, LEGNUM::RH);
        moveLeg(LEGNUM::RH,angel);
    }
    curLegLF_Position.x = curLegLF_Position.x + m_menual_del_bodyPos_x;
    curLegLF_Position.y = curLegLF_Position.y + m_menual_del_bodyPos_y;
    curLegLF_Position.z = curLegLF_Position.z + m_menual_del_bodyPos_z;
    curLegLM_Position.x = curLegLM_Position.x + m_menual_del_bodyPos_x;
    curLegLM_Position.y = curLegLM_Position.y + m_menual_del_bodyPos_y;
    curLegLM_Position.z = curLegLM_Position.z + m_menual_del_bodyPos_z;   
    curLegLH_Position.x = curLegLH_Position.x + m_menual_del_bodyPos_x;
    curLegLH_Position.y = curLegLH_Position.y + m_menual_del_bodyPos_y;
    curLegLH_Position.z = curLegLH_Position.z + m_menual_del_bodyPos_z;
    curLegRF_Position.x = curLegRF_Position.x + m_menual_del_bodyPos_x;
    curLegRF_Position.y = curLegRF_Position.y - m_menual_del_bodyPos_y;
    curLegRF_Position.z = curLegRF_Position.z + m_menual_del_bodyPos_z;
    curLegRM_Position.x = curLegRM_Position.x + m_menual_del_bodyPos_x;
    curLegRM_Position.y = curLegRM_Position.y - m_menual_del_bodyPos_y;
    curLegRM_Position.z = curLegRM_Position.z + m_menual_del_bodyPos_z;
    curLegRH_Position.x = curLegRH_Position.x + m_menual_del_bodyPos_x;
    curLegRH_Position.y = curLegRH_Position.y - m_menual_del_bodyPos_y;
    curLegRH_Position.z = curLegRH_Position.z + m_menual_del_bodyPos_z;


}