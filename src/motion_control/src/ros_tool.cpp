#include"motion_control/ros_tool.h"
#include"motion_control/config.h"
#include"std_msgs/Float64.h"
#include"motion_control/gait.h"
#include"sensor_msgs/Joy.h"
#include<string>
#include<iostream>
#include<sys/types.h>
#include<sys/stat.h>
#include<fcntl.h>
#include"geometry_msgs/Twist.h"
#include<gazebo_msgs/LinkStates.h>
#include<gazebo_msgs/ContactsState.h>

using namespace std;

extern Gait hexapodRobot;
void doMsgIMUMsg(sensor_msgs::Imu msg)
{
    hexapodRobot.m_get_accelerationX = msg.linear_acceleration.x;
    hexapodRobot.m_get_accelerationY = msg.linear_acceleration.y;
    hexapodRobot.m_get_accelerationZ = msg.linear_acceleration.z;
}

void doMsgModelMsg(gazebo_msgs::ModelStates msg)//获取仿真机器人模型的参数
{
    int box_index = -1;
    std::vector<std::string> model_names = msg.name;
    for(int i=0; i<model_names.size(); i++){
        if(model_names[i] == ROBOT_NAME)
            box_index = i;
    }
    float pitch;
    float w = msg.pose[box_index].orientation.w;
    float x = msg.pose[box_index].orientation.x;
    float y = msg.pose[box_index].orientation.y;
    float z = msg.pose[box_index].orientation.z;
    hexapodRobot.m_get_quaternion_x = x;
    hexapodRobot.m_get_quaternion_y = y;
    hexapodRobot.m_get_quaternion_z = z;
    hexapodRobot.m_get_quaternion_w = w;
    float roll = atan2( 2*(w*x+y*z) , 1-2*(x*x +y*y) );
    float sinp = 2*(w*y - z*x);
    if (abs(sinp >= 1))
        pitch = copysign(M_PI/2.0,sinp);
    else
        pitch = asin(sinp);
    float yaw = atan2( 2*(w*z + x*y),1-2*(y*y + z*z) );
    roll = roll * 180 /M_PI;
    pitch = pitch * 180 / M_PI;
    yaw = yaw * 180 / M_PI;

    hexapodRobot.m_get_pitch = pitch;
    hexapodRobot.m_get_roll = roll;
    hexapodRobot.m_get_yaw = yaw;
    hexapodRobot.m_get_posX = msg.pose[box_index].position.x;
    hexapodRobot.m_get_posY = msg.pose[box_index].position.y;
    hexapodRobot.m_get_posZ = msg.pose[box_index].position.z;
    hexapodRobot.m_get_angularX = msg.twist[box_index].angular.x;
    hexapodRobot.m_get_angularY = msg.twist[box_index].angular.y;
    hexapodRobot.m_get_angularZ = msg.twist[box_index].angular.z;
    hexapodRobot.m_get_linearX = msg.twist[box_index].linear.x;
    hexapodRobot.m_get_linearY = msg.twist[box_index].linear.y;
    hexapodRobot.m_get_linearZ = msg.twist[box_index].linear.z;
    hexapodRobot.global_LF_Position.x = hexapodRobot.curLegLF_Position.x + BODY_LENGTH/2 + hexapodRobot.m_get_posX;
    hexapodRobot.global_LF_Position.y = hexapodRobot.curLegLF_Position.y + BODY_WIDTH_SMALL/2 + hexapodRobot.m_get_posY;
    hexapodRobot.global_LF_Position.z = hexapodRobot.curLegLF_Position.z + hexapodRobot.m_get_posZ - hexapodRobot.m_bodyHeight;
    hexapodRobot.global_LM_Position.x = hexapodRobot.curLegLM_Position.x + hexapodRobot.m_get_posX;
    hexapodRobot.global_LM_Position.y = hexapodRobot.curLegLM_Position.y + BODY_WIDTH_LARGE/2 + hexapodRobot.m_get_posY;
    hexapodRobot.global_LM_Position.z = hexapodRobot.curLegLM_Position.z + hexapodRobot.m_get_posZ - hexapodRobot.m_bodyHeight;
    hexapodRobot.global_LH_Position.x = hexapodRobot.curLegLH_Position.x - BODY_LENGTH/2 + hexapodRobot.m_get_posX;
    hexapodRobot.global_LH_Position.y = hexapodRobot.curLegLH_Position.y + BODY_WIDTH_SMALL/2 + hexapodRobot.m_get_posY;
    hexapodRobot.global_LH_Position.z = hexapodRobot.curLegLH_Position.z + hexapodRobot.m_get_posZ - hexapodRobot.m_bodyHeight;
    hexapodRobot.global_RF_Position.x = hexapodRobot.curLegRF_Position.x + BODY_LENGTH/2 + hexapodRobot.m_get_posX;
    hexapodRobot.global_RF_Position.y = hexapodRobot.curLegRF_Position.y - BODY_WIDTH_SMALL/2 + hexapodRobot.m_get_posY;
    hexapodRobot.global_RF_Position.z = hexapodRobot.curLegRF_Position.z + hexapodRobot.m_get_posZ - hexapodRobot.m_bodyHeight;
    hexapodRobot.global_RM_Position.x = hexapodRobot.curLegRM_Position.x + hexapodRobot.m_get_posX;
    hexapodRobot.global_RM_Position.y = hexapodRobot.curLegRM_Position.y - BODY_WIDTH_LARGE/2 + hexapodRobot.m_get_posY;
    hexapodRobot.global_RM_Position.z = hexapodRobot.curLegRM_Position.z + hexapodRobot.m_get_posZ - hexapodRobot.m_bodyHeight;
    hexapodRobot.global_RH_Position.x = hexapodRobot.curLegRH_Position.x - BODY_LENGTH/2 + hexapodRobot.m_get_posX;
    hexapodRobot.global_RH_Position.y = hexapodRobot.curLegRH_Position.y - BODY_WIDTH_SMALL/2 + hexapodRobot.m_get_posY;
    hexapodRobot.global_RH_Position.z = hexapodRobot.curLegRH_Position.z + hexapodRobot.m_get_posZ - hexapodRobot.m_bodyHeight;

    //根据当前机器人实际的附仰角 确定给出的附仰角参数
    hexapodRobot.robotCommands.pitch = hexapodRobot.robotCommands.pitch - (hexapodRobot.m_last_pitch-hexapodRobot.m_get_pitch);
    hexapodRobot.m_last_pitch = hexapodRobot.m_get_pitch;
}



void doMsgJoy(sensor_msgs::Joy msg)
{ 
    #ifdef GAMEPAD
    if(msg.buttons[9]==0)//没有按下左摇杆按键
    {
        static double strideX_static = 0;
        static double strideY_static = 0;
        hexapodRobot.driverCommands.strideY = msg.axes[0]*DEF_STRIDE_Y;//Y方向步幅
        hexapodRobot.driverCommands.strideX = msg.axes[1]*DEF_STRIDE_X;//X方向步幅
        if(strideX_static != hexapodRobot.driverCommands.strideX)
            hexapodRobot.changeNum++;
    
        strideX_static = hexapodRobot.driverCommands.strideX;
        
        if(strideY_static != hexapodRobot.driverCommands.strideY)
            hexapodRobot.changeNum++;
       
        strideY_static = hexapodRobot.driverCommands.strideY;
    }
    else//按下左摇杆按键
    {
        static double posX_static = 0;
        static double posY_static = 0;
        hexapodRobot.driverCommands.posX = msg.axes[1]*DEF_POSITION_X;//x方向机身偏移
        hexapodRobot.driverCommands.posY = msg.axes[0]*DEF_POSITION_Y;//y方向机身偏移
        if(posX_static != hexapodRobot.driverCommands.posX)
            hexapodRobot.changeNum++;
       
        posX_static = hexapodRobot.driverCommands.posX;
        
        if(posY_static != hexapodRobot.driverCommands.posY)
            hexapodRobot.changeNum++;
       
        posY_static = hexapodRobot.driverCommands.posY;
    }
    
    if(msg.buttons[2]==1)
    {
        hexapodRobot.driverCommands.gaitFlag = 2;//二步态
        hexapodRobot.changeNum++;
 
    }
    if(msg.buttons[3]==1)
    {
        hexapodRobot.driverCommands.gaitFlag = 3;//三步态
        hexapodRobot.changeNum++;
    }
    if(msg.buttons[1]==1)
    {
        hexapodRobot.driverCommands.gaitFlag = 6;//六步态
        hexapodRobot.changeNum++;
    }
    if(msg.axes[7]==-1)
    {
        hexapodRobot.driverCommands.gaitFlag = 12;//过沟步态
        hexapodRobot.changeNum++;
    }

    // if(msg.axes[6]==1)//摄像头左转
    // {
    //     if(hexapodRobot.cameraLeftRightAngle+0.1 >= 3.14)
    //     {
    //         hexapodRobot.cameraLeftRightAngle = 3.14;
    //     }
    //     else
    //     {
    //         hexapodRobot.cameraLeftRightAngle += 0.1;
    //     }
    //     hexapodRobot.setLeftAndRightLook(hexapodRobot.cameraLeftRightAngle);
    //     ROS_INFO("夹角:%f",hexapodRobot.cameraLeftRightAngle *180/3.14);
    // }
    // if(msg.axes[6]==-1)//摄像头右转
    // {
    //     if(hexapodRobot.cameraLeftRightAngle-0.1 <= -3.14)
    //     {
    //         hexapodRobot.cameraLeftRightAngle = -3.14;
    //     }
    //     else
    //     {
    //         hexapodRobot.cameraLeftRightAngle -= 0.1;
    //     }
    //     hexapodRobot.setLeftAndRightLook(hexapodRobot.cameraLeftRightAngle);
    //     ROS_INFO("夹角:%f",hexapodRobot.cameraLeftRightAngle *180/3.14);
    // }

    if(msg.buttons[10]==0)//没有按下右摇杆按键
    {
        static double strideX_yaw = 0;
        hexapodRobot.driverCommands.yaw = msg.axes[3]*DEF_YAW /180 * 3.14;//偏航
        if(strideX_yaw != hexapodRobot.driverCommands.yaw)
            hexapodRobot.changeNum++;
        strideX_yaw = hexapodRobot.driverCommands.yaw;
    }
    else//按下右摇杆按键
    {
        static double pitch_static = 0;
        static double roll_static = 0;
        hexapodRobot.driverCommands.pitch = msg.axes[4]*DEF_PITCH;//俯仰角
        if(pitch_static!=hexapodRobot.driverCommands.pitch)
            hexapodRobot.changeNum++;
        pitch_static=hexapodRobot.driverCommands.pitch;
        hexapodRobot.driverCommands.roll = msg.axes[3]*DEF_ROLL;//翻滚角
        if(roll_static!=hexapodRobot.driverCommands.roll)
            hexapodRobot.changeNum++;
        roll_static=hexapodRobot.driverCommands.roll;
    }
    if(msg.buttons[4]==1)//机身高度增加
    {
        if(hexapodRobot.driverCommands.bodyHeight+0.01 >= DEF_MAX_BODYHEIGHT)
        {
            hexapodRobot.driverCommands.bodyHeight = DEF_MAX_BODYHEIGHT;
        }
        else
        {
            hexapodRobot.driverCommands.bodyHeight += 0.01;
            hexapodRobot.changeNum++;
        }
    }
    if(msg.buttons[5]==1)//机身高度减少
    {

        if(hexapodRobot.driverCommands.bodyHeight-0.01 <= DEF_MIN_BODYHEIGHT)
        {
            hexapodRobot.driverCommands.bodyHeight = DEF_MIN_BODYHEIGHT;
        }
        else
        {
            hexapodRobot.driverCommands.bodyHeight -= 0.01;
            hexapodRobot.changeNum++;
        }
    }
    static double stepHeight_static = 0;
    hexapodRobot.driverCommands.stepHeight = 0.3*msg.axes[4]+0.3;
    if(stepHeight_static != hexapodRobot.driverCommands.stepHeight)
        hexapodRobot.changeNum++;
    stepHeight_static = hexapodRobot.driverCommands.stepHeight;
    // if(msg.axes[7]==1)//步高增加
    // {
    //     if(hexapodRobot.driverCommands.stepHeight+0.01 >=DEF_MAX_STEPHEIGHT)
    //     {
    //         hexapodRobot.driverCommands.stepHeight = DEF_MAX_STEPHEIGHT;
    //     }
    //     else
    //     {
    //         hexapodRobot.driverCommands.stepHeight += 0.01;
    //     }
    // }
    // if(msg.axes[7]==-1)//步高减少
    // {
    //     if(hexapodRobot.driverCommands.stepHeight-0.01 <=DEF_MIN_STEPHEIGHT)
    //     {
    //         hexapodRobot.driverCommands.stepHeight = DEF_MIN_STEPHEIGHT;
    //     }
    //     else
    //     {
    //         hexapodRobot.driverCommands.stepHeight -= 0.01;
    //     }
    // }

    if(msg.axes[2] <0.8)//步态周期减少
    {
        if(hexapodRobot.driverCommands.gaitCycle -0.02 <= DEF_MIN_TCYCLE)
        {
            hexapodRobot.driverCommands.gaitCycle = DEF_MIN_TCYCLE;
        }
        else
        {
            hexapodRobot.driverCommands.gaitCycle -= 0.02;
            hexapodRobot.changeNum++;
        }
    }

    if(msg.axes[5]<0.8)//步态周期增加
    {
        if(hexapodRobot.driverCommands.gaitCycle+0.02 >= DEF_MAX_TCYCLE)
        {
            hexapodRobot.driverCommands.gaitCycle = DEF_MAX_TCYCLE;
        }
        else
        {
            hexapodRobot.driverCommands.gaitCycle += 0.02;
            hexapodRobot.changeNum++;
        }
    }
    if(msg.buttons[0]==1)
    {
        if(hexapodRobot.m_isRecoredData == false)
        {
            printf("开始记录数据\n");
            hexapodRobot.changeNum = 0;
            hexapodRobot.m_get_energy = 0;
            hexapodRobot.m_isRecoredData = true;
            hexapodRobot.fd = open("RobotRecored.txt",O_RDWR|O_CREAT,0664);
            ssize_t len;
            len = write(hexapodRobot.fd,"时间 能量消耗 指令次数 俯仰角 翻滚角 偏航角 稳定裕度 足端x 足端y 足端z 机身X 机身Y 机身Z 速度X 速度Y 偏航指令",strlen("时间 能量消耗 指令次数 俯仰角 翻滚角 偏航角 稳定裕度 足端x 足端y 足端z 机身X 机身Y 机身Z 速度X 速度Y 偏航指令"));
            len = write(hexapodRobot.fd,"\n",1);
        }
        else
        {
            printf("结束记录数据\n");
            hexapodRobot.m_isRecoredData = false;
            close(hexapodRobot.fd);
        }
    }
    #endif
}

double curtime = 0;
void doSomeThing(const ros::TimerEvent &event)//数据记录
{
    double zuduanX,zuduanY,zuduanZ;
    zuduanX = hexapodRobot.curLegLF_Position.x + BODY_LENGTH/2 + hexapodRobot.m_get_posX;
    zuduanY = hexapodRobot.curLegLF_Position.y + BODY_WIDTH_SMALL/2 + hexapodRobot.m_get_posY;
    zuduanZ = hexapodRobot.curLegLF_Position.z + hexapodRobot.m_get_posZ - hexapodRobot.m_bodyHeight;
    if(hexapodRobot.m_isRecoredData)
    {
        ROS_INFO("-------------");
        ROS_INFO("时间:%f\t能量消耗:%f\t指令次数:%f\t俯仰角:%f\t翻滚角:%f\t偏航角:%f\t稳定裕度:%f\t足端x:%f\t足端y:%f\t足端z:%f\t机身X:%f\t机身Y:%f\t机身Z:%f\t速度X:%f\t速度Y:%f\t偏航指令:%f",
        curtime+=INTERVAL,hexapodRobot.m_get_energy, hexapodRobot.changeNum, hexapodRobot.m_get_pitch, hexapodRobot.m_get_roll, hexapodRobot.m_get_yaw, hexapodRobot.m_get_stability, zuduanX,
        zuduanY, zuduanZ, hexapodRobot.m_get_posX, hexapodRobot.m_get_posY, hexapodRobot.m_get_posZ,hexapodRobot.m_get_linearX, hexapodRobot.m_get_linearY,
        hexapodRobot.m_yaw);
        //向文件中写入数据
        ssize_t len;
        len = write(hexapodRobot.fd, to_string(curtime).c_str(), sizeof(to_string(curtime).c_str()));
        len = write(hexapodRobot.fd, " ",1);
        len = write(hexapodRobot.fd, to_string(hexapodRobot.m_get_energy).c_str(), sizeof(to_string(curtime).c_str()));
        len = write(hexapodRobot.fd, " ",1);
        len = write(hexapodRobot.fd, to_string(hexapodRobot.changeNum).c_str(), sizeof(to_string(curtime).c_str()));
        len = write(hexapodRobot.fd, " ",1);
        len = write(hexapodRobot.fd, to_string(-hexapodRobot.m_get_pitch).c_str(), sizeof(to_string(-hexapodRobot.m_get_pitch).c_str()));
        len = write(hexapodRobot.fd, " ",1);
        len = write(hexapodRobot.fd, to_string(hexapodRobot.m_get_roll).c_str(), sizeof(to_string(hexapodRobot.m_get_roll).c_str()));
        len = write(hexapodRobot.fd, " ",1);
        len = write(hexapodRobot.fd, to_string(hexapodRobot.m_get_yaw).c_str(), sizeof(to_string(hexapodRobot.m_get_yaw).c_str()));
        len = write(hexapodRobot.fd, " ",1);
        len = write(hexapodRobot.fd, to_string(hexapodRobot.m_get_stability).c_str(), sizeof(to_string(hexapodRobot.m_get_stability).c_str()));
        len = write(hexapodRobot.fd, " ",1);
        len = write(hexapodRobot.fd, to_string(zuduanX).c_str(), sizeof(to_string(zuduanX).c_str()));
        len = write(hexapodRobot.fd, " ",1);
        len = write(hexapodRobot.fd, to_string(zuduanY).c_str(), sizeof(to_string(zuduanY).c_str()));
        len = write(hexapodRobot.fd, " ",1);
        len = write(hexapodRobot.fd, to_string(zuduanZ).c_str(), sizeof(to_string(zuduanZ).c_str()));
        len = write(hexapodRobot.fd, " ",1);
        len = write(hexapodRobot.fd, to_string(hexapodRobot.m_get_posX).c_str(), sizeof(to_string(hexapodRobot.m_get_posX).c_str()));
        len = write(hexapodRobot.fd, " ",1);
        len = write(hexapodRobot.fd, to_string(hexapodRobot.m_get_posY).c_str(), sizeof(to_string(hexapodRobot.m_get_posY).c_str()));
        len = write(hexapodRobot.fd, " ",1);
        len = write(hexapodRobot.fd, to_string(hexapodRobot.m_get_posZ).c_str(), sizeof(to_string(hexapodRobot.m_get_posZ).c_str()));
        len = write(hexapodRobot.fd, " ",1);
        len = write(hexapodRobot.fd, to_string(hexapodRobot.m_get_linearX).c_str(), sizeof(to_string(hexapodRobot.m_get_linearX).c_str()));
        len = write(hexapodRobot.fd, " ",1);
        len = write(hexapodRobot.fd, to_string(hexapodRobot.m_get_linearY).c_str(), sizeof(to_string(hexapodRobot.m_get_linearY).c_str()));
        len = write(hexapodRobot.fd, " ",1);
        len = write(hexapodRobot.fd, to_string(hexapodRobot.m_yaw*180/3.14).c_str(), sizeof(to_string(hexapodRobot.m_yaw*180/3.14).c_str()));
        len = write(hexapodRobot.fd, "\n",1);
    }
}

void doMsgCmd_vel(const geometry_msgs::Twist msg)//cmd_vel消息的处理函数
{
    hexapodRobot.robotCommands.gaitCycle = 2;
    hexapodRobot.robotCommands.strideX = hexapodRobot.robotCommands.gaitCycle*msg.linear.x / 2;
    hexapodRobot.robotCommands.yaw =  msg.angular.z;
}

void doMsgConnection(const gazebo_msgs::ContactsState msg)
{
    if(msg.states.size())
        hexapodRobot.m_get_collection++;
}

// ROSTool* ROSTool::g_rosTool = new ROSTool;
void ROSTool::ROSInit(int &argc, char ** &argv)
{
    ros::init(argc,argv,"node_motion_control");
    ros::NodeHandle nh;//该类封装了 ROS 中的一些常用功能
    pubLF1 = nh.advertise<std_msgs::Float64>(MSG_LF1,10);
    pubLF2 = nh.advertise<std_msgs::Float64>(MSG_LF2,10);
    pubLF3 = nh.advertise<std_msgs::Float64>(MSG_LF3,10);
    pubLM1 = nh.advertise<std_msgs::Float64>(MSG_LM1,10);
    pubLM2 = nh.advertise<std_msgs::Float64>(MSG_LM2,10);
    pubLM3 = nh.advertise<std_msgs::Float64>(MSG_LM3,10);
    pubLH1 = nh.advertise<std_msgs::Float64>(MSG_LH1,10);
    pubLH2 = nh.advertise<std_msgs::Float64>(MSG_LH2,10);
    pubLH3 = nh.advertise<std_msgs::Float64>(MSG_LH3,10);
    pubRF1 = nh.advertise<std_msgs::Float64>(MSG_RF1,10);
    pubRF2 = nh.advertise<std_msgs::Float64>(MSG_RF2,10);
    pubRF3 = nh.advertise<std_msgs::Float64>(MSG_RF3,10);
    pubRM1 = nh.advertise<std_msgs::Float64>(MSG_RM1,10);
    pubRM2 = nh.advertise<std_msgs::Float64>(MSG_RM2,10);
    pubRM3 = nh.advertise<std_msgs::Float64>(MSG_RM3,10);
    pubRH1 = nh.advertise<std_msgs::Float64>(MSG_RH1,10);
    pubRH2 = nh.advertise<std_msgs::Float64>(MSG_RH2,10);
    pubRH3 = nh.advertise<std_msgs::Float64>(MSG_RH3,10);
    pubFake = nh.advertise<std_msgs::Float64>(MSG_fake_controller,10);
    pubKinectCamera = nh.advertise<std_msgs::Float64>(MSG_KinectCamera_controller,10);

    pubOdom = nh.advertise<nav_msgs::Odometry>("odom",10);
    pubBroadcaster = new tf2_ros::TransformBroadcaster;

    subIMU = nh.subscribe<sensor_msgs::Imu>("EISpider/imu_data", 10, doMsgIMUMsg);
    subModel = nh.subscribe<gazebo_msgs::ModelStates>("/gazebo/model_states", 10, doMsgModelMsg);
    subJoy = nh.subscribe<sensor_msgs::Joy>("/joy",10,doMsgJoy);
    cmd_vel_subscriber = nh.subscribe<geometry_msgs::Twist>("cmd_vel",10, doMsgCmd_vel);
    timer = nh.createTimer(ros::Duration(INTERVAL),doSomeThing);
    pubStability = nh.advertise<std_msgs::Float64>("stability",10);
    gridMapPublisher = nh.advertise<grid_map_msgs::GridMap>("grid_map", 1, true);
    pubEnergy = nh.advertise<std_msgs::Float64>("Energy",10);
    sub_Collection = nh.subscribe<gazebo_msgs::ContactsState>("/EISpider/leg_lf/contact_force", 1, doMsgConnection);
    pubConnection = nh.advertise<std_msgs::Float64>("Connection",10);
    RosPubFake(0);
    RosPubKinectCamera(0);

}

void ROSTool::RosPubGridMap(grid_map_msgs::GridMap mapMsg)
{
    gridMapPublisher.publish(mapMsg);
}

void ROSTool::RosPubLF1(double angle)
{
    std_msgs::Float64 temp;
    temp.data = angle;
    this->pubLF1.publish(temp);
}

void ROSTool::RosPubLF2(double angle)
{
    std_msgs::Float64 temp;
    temp.data = angle;
    this->pubLF2.publish(temp);
}
void ROSTool::RosPubLF3(double angle)
{
    std_msgs::Float64 temp;
    temp.data = angle;
    this->pubLF3.publish(temp);
}
void ROSTool::RosPubLM1(double angle)
{
    std_msgs::Float64 temp;
    temp.data = angle;
    this->pubLM1.publish(temp);
}
void ROSTool::RosPubLM2(double angle)
{
    std_msgs::Float64 temp;
    temp.data = angle;
    this->pubLM2.publish(temp);
}
void ROSTool::RosPubLM3(double angle)
{
    std_msgs::Float64 temp;
    temp.data = angle;
    this->pubLM3.publish(temp);
}
void ROSTool::RosPubLH1(double angle)
{
    std_msgs::Float64 temp;
    temp.data = angle;
    this->pubLH1.publish(temp);
}
void ROSTool::RosPubLH2(double angle)
{
    std_msgs::Float64 temp;
    temp.data = angle;
    this->pubLH2.publish(temp);
}
void ROSTool::RosPubLH3(double angle)
{
    std_msgs::Float64 temp;
    temp.data = angle;
    this->pubLH3.publish(temp);
}
void ROSTool::RosPubRF1(double angle)
{
    std_msgs::Float64 temp;
    temp.data = angle;
    this->pubRF1.publish(temp);
}
void ROSTool::RosPubRF2(double angle)
{
    std_msgs::Float64 temp;
    temp.data = angle;
    this->pubRF2.publish(temp);
}
void ROSTool::RosPubRF3(double angle)
{
    std_msgs::Float64 temp;
    temp.data = angle;
    this->pubRF3.publish(temp);
}
void ROSTool::RosPubRM1(double angle)
{
    std_msgs::Float64 temp;
    temp.data = angle;
    this->pubRM1.publish(temp);
}
void ROSTool::RosPubRM2(double angle)
{
    std_msgs::Float64 temp;
    temp.data = angle;
    this->pubRM2.publish(temp);
}
void ROSTool::RosPubRM3(double angle)
{
    std_msgs::Float64 temp;
    temp.data = angle;
    this->pubRM3.publish(temp);
}
void ROSTool::RosPubRH1(double angle)
{
    std_msgs::Float64 temp;
    temp.data = angle;
    this->pubRH1.publish(temp);
}
void ROSTool::RosPubRH2(double angle)
{
    std_msgs::Float64 temp;
    temp.data = angle;
    this->pubRH2.publish(temp);
}
void ROSTool::RosPubRH3(double angle)
{
    std_msgs::Float64 temp;
    temp.data = angle;
    this->pubRH3.publish(temp);
}

void ROSTool::RosPubOdomData(nav_msgs::Odometry& data)
{
    pubOdom.publish(data);
}

void ROSTool::RosPubTFBaseToOdom(geometry_msgs::TransformStamped& data)
{
    pubBroadcaster->sendTransform(data);
}

void ROSTool::RosPubStability(double data)
{
    std_msgs::Float64 temp;
    temp.data = data;
    this->pubStability.publish(temp);
}
void ROSTool::RosPubFake(double angle)
{
    std_msgs::Float64 temp;
    temp.data = angle;
    this->pubFake.publish(temp);
}
void ROSTool::RosPubKinectCamera(double angle)
{
    std_msgs::Float64 temp;
    temp.data = angle;
    this->pubKinectCamera.publish(temp);
}

void ROSTool::RosPubEnergy(double data)
{
    std_msgs::Float64 temp;
    temp.data = data;
    this->pubEnergy.publish(temp);
}

void ROSTool::RosPubColliction(double data)
{
    std_msgs::Float64 temp;
    temp.data = data;
    this->pubConnection.publish(temp);
}
