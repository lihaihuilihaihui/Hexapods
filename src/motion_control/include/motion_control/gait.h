#ifndef GAIT_H
#define GAIT_H
#include"motion_control/trajectory.h"
#include"hexapod_msg/commands.h"

class Gait
{
public:
    double m_stepHeight;//抬腿高度，就是摆线高度
    double m_stridX;//X方向步幅
    double m_stridY;//Y方向步幅
    double m_Tcycle;//步态周期
    double m_pitch;//机身俯仰角
    double m_roll;//机身翻滚角
    double m_yaw;//偏航
    double m_PosX;//机身x方向偏移
    double m_PosY;//机身y方向偏移
    double m_bodyHeight;//机身高度
    int m_gait;//当前步态
    bool m_isParking;//是否停车 0-不停车 1-停车

    double m_get_posX;//获取机器人实际的相对于世界坐标系的x坐标
    double m_get_posY;//获取机器人实际的相对于世界坐标系的y坐标
    double m_get_posZ;//获取机器人实际的相对于世界坐标系的z坐标
    double m_get_pitch;//获取机器人实际的俯仰角
    double m_get_roll;//获取机器人实际的翻滚角
    double m_get_yaw;//获取机器人实际的偏航角
    double m_get_quaternion_x;//获取实时四元数x
    double m_get_quaternion_y;//获取实时四元数y
    double m_get_quaternion_z;//获取实时四元数z
    double m_get_quaternion_w;//获取实时四元数w
    double m_get_linearX;//获取机器人实际的X方向线速度
    double m_get_linearY;//获取机器人实际的Y方向线速度
    double m_get_linearZ;//获取机器人实际的Z方向线速度
    double m_get_accelerationX;//获取机器人实际的X方向加速度
    double m_get_accelerationY;//获取机器人实际的Y方向加速度
    double m_get_accelerationZ;//获取机器人实际的Z方向加速度
    double m_get_angularX;//获取机器人实际的x方向角速度
    double m_get_angularY;//获取机器人实际的y方向角速度
    double m_get_angularZ;//获取机器人实际的z方向角速度
    double m_get_stability;//获取机器人的实时稳定裕度
    double m_get_energy;//获取实时能量消耗
    hexapod_msg::legAngle m_lastEnergyAngle;//计算能量消耗时记录的上一时刻的关节转角
    int m_get_collection;

    //获取步态运动时腿部起始和终止坐标
    hexapod_msg::footPosition start_leg;
    hexapod_msg::footPosition end_leg;

    //走半步标志位 是否进行步态切换标志位 当执行完切换函数机器人归位将该位值真 其他步态需要从起始位置走半步 走完半步将该位置假 开始正常走
    bool isStart;
    bool m_isRecoredData;//是否开始记录数据标志位
    int fd;//记录的文件标识符

    //步态切换时的起始坐标 因为是从初始站立位置开始 所以该起始位置坐标就是站立时腿部坐标 走半步的起始位置
    hexapod_msg::footPosition startLF;
    hexapod_msg::footPosition startLM;
    hexapod_msg::footPosition startLH;
    hexapod_msg::footPosition startRF;
    hexapod_msg::footPosition startRM;
    hexapod_msg::footPosition startRH;
    
    //支撑相/摆动相标志位
    bool isSwingLF;
    bool isSwingLM;
    bool isSwingLH;
    bool isSwingRF;
    bool isSwingRM;
    bool isSwingRH;

    /*实时获取六祖机器人每条腿运动的坐标 相对于根关节坐标系*/
    hexapod_msg::footPosition curLegLF_Position;
    hexapod_msg::footPosition curLegLM_Position;
    hexapod_msg::footPosition curLegLH_Position;
    hexapod_msg::footPosition curLegRF_Position;
    hexapod_msg::footPosition curLegRM_Position;
    hexapod_msg::footPosition curLegRH_Position;

    /*实时获取六祖机器人每条腿运动的坐标 相对于世界坐标系*/
    hexapod_msg::footPosition global_LF_Position;
    hexapod_msg::footPosition global_LM_Position;
    hexapod_msg::footPosition global_LH_Position;
    hexapod_msg::footPosition global_RF_Position;
    hexapod_msg::footPosition global_RM_Position;
    hexapod_msg::footPosition global_RH_Position;

    //驾驶员的决策指令和机器人的决策指令
    hexapod_msg::commands driverCommands;
    hexapod_msg::commands robotCommands;

    bool m_menual_isSelectLF;
    bool m_menual_isSelectLM;
    bool m_menual_isSelectLH;
    bool m_menual_isSelectRF;
    bool m_menual_isSelectRM;
    bool m_menual_isSelectRH;
    double m_menual_del_footPosition_x;
    double m_menual_del_footPosition_y;
    double m_menual_del_footPosition_z;
    double m_menual_del_bodyPos_x;
    double m_menual_del_bodyPos_y;
    double m_menual_del_bodyPos_z;

    double m_last_pitch;
    double cameraLeftRightAngle;//摄像头左右转的角度
    double changeNum=0;//指令改变次数

public:
    Gait();
    ~Gait();
    void getYawFootPosition(enum LEGNUM legNum, hexapod_msg::footPosition & start, hexapod_msg::footPosition & end);
    void moveLeg(enum LEGNUM legNum, hexapod_msg::legAngle angle);
    void yawTwoGait();
    void yawThreeGait();
    void yawSixGait();
    void gaitSwitch();//步态切换回初始状态
    void guoGouGait(double x_1, double x_2, double x_3, double x_4, double x_5, double x_6, double x_7, double x_8, 
    double x_9, double x_10, double x_11);
    void setLeftAndRightLook(double angle);
    void setUpAndDownLook(double angle);
    void menualGait();
};

#endif
