#pragma once

//腿号枚举
enum LEGNUM{LF=1,LM,LH,RH,RM,RF};
#define INTERVAL 0.1
#define GAMEPAD
#define JETHEXA

/*-------------------------------大电动六足-------------------------------------------*/
#ifdef DA
//机器人名称
#define ROBOT_NAME "EISpider"
#define BASELINK_NAME  "link_base"
//单腿连杆长度
#define L1 0.18
#define L2 0.5
#define L3 0.5

//关节话题消息
#define MSG_LF1 "/EISpider/left_F_q1_position_controller/command"
#define MSG_LF2 "/EISpider/left_F_q2_position_controller/command"
#define MSG_LF3 "/EISpider/left_F_q3_position_controller/command"
#define MSG_LM1 "/EISpider/left_M_q1_position_controller/command"
#define MSG_LM2 "/EISpider/left_M_q2_position_controller/command"
#define MSG_LM3 "/EISpider/left_M_q3_position_controller/command"
#define MSG_LH1 "/EISpider/left_H_q1_position_controller/command"
#define MSG_LH2 "/EISpider/left_H_q2_position_controller/command"
#define MSG_LH3 "/EISpider/left_H_q3_position_controller/command"
#define MSG_RF1 "/EISpider/right_F_q1_position_controller/command"
#define MSG_RF2 "/EISpider/right_F_q2_position_controller/command"
#define MSG_RF3 "/EISpider/right_F_q3_position_controller/command"
#define MSG_RM1 "/EISpider/right_M_q1_position_controller/command"
#define MSG_RM2 "/EISpider/right_M_q2_position_controller/command"
#define MSG_RM3 "/EISpider/right_M_q3_position_controller/command"
#define MSG_RH1 "/EISpider/right_H_q1_position_controller/command"
#define MSG_RH2 "/EISpider/right_H_q2_position_controller/command"
#define MSG_RH3 "/EISpider/right_H_q3_position_controller/command"
#define MSG_KinectCamera_controller "/EISpider/KinectCamera_controller/command"
#define MSG_fake_controller "/EISpider/fake_controller/command"

//机器人机身构型参数
#define INCLUDE_ANGLE M_PI/6
#define BODY_LENGTH 0.7
#define BODY_WIDTH_LARGE 0.8
#define BODY_WIDTH_SMALL 0.4

//延时时间
#define DELAY_TIME 100

//操控指令参数阈值
#define DEF_STRIDE_X 0.8
#define DEF_STRIDE_Y 0.8
#define DEF_POSITION_X 0.3
#define DEF_POSITION_Y 0.3
#define DEF_YAW 15
#define DEF_PITCH 20
#define DEF_ROLL 20
#define DEF_MAX_BODYHEIGHT 0.8
#define DEF_MIN_BODYHEIGHT 0.2
#define DEF_MAX_STEPHEIGHT 0.5
#define DEF_MIN_STEPHEIGHT 0
#define DEF_MAX_TCYCLE 10
#define DEF_MIN_TCYCLE 1

//初始值
#define DEF_INIT_STEPHEIGHT 0.3
#define DEF_INIT_TCYCLE 5
#define DEF_INIT_BODYHEIGHT L3
#define DEF_INIT_GAIT 2
#endif



/*-------------------------------网上小六足+实物-------------------------------------------*/
#ifdef XIAO
//机器人名称
#define ROBOT_NAME "Hexapot"
#define BASELINK_NAME "base_link"
//单腿连杆长度
#define L1 0.045
#define L2 0.075
#define L3 0.135

//关节话题消息
#define MSG_LF1 "/Hexapot/left_F_q1_position_controller/command"
#define MSG_LF2 "/Hexapot/left_F_q2_position_controller/command"
#define MSG_LF3 "/Hexapot/left_F_q3_position_controller/command"
#define MSG_LM1 "/Hexapot/left_M_q1_position_controller/command"
#define MSG_LM2 "/Hexapot/left_M_q2_position_controller/command"
#define MSG_LM3 "/Hexapot/left_M_q3_position_controller/command"
#define MSG_LH1 "/Hexapot/left_H_q1_position_controller/command"
#define MSG_LH2 "/Hexapot/left_H_q2_position_controller/command"
#define MSG_LH3 "/Hexapot/left_H_q3_position_controller/command"
#define MSG_RF1 "/Hexapot/right_F_q1_position_controller/command"
#define MSG_RF2 "/Hexapot/right_F_q2_position_controller/command"
#define MSG_RF3 "/Hexapot/right_F_q3_position_controller/command"
#define MSG_RM1 "/Hexapot/right_M_q1_position_controller/command"
#define MSG_RM2 "/Hexapot/right_M_q2_position_controller/command"
#define MSG_RM3 "/Hexapot/right_M_q3_position_controller/command"
#define MSG_RH1 "/Hexapot/right_H_q1_position_controller/command"
#define MSG_RH2 "/Hexapot/right_H_q2_position_controller/command"
#define MSG_RH3 "/Hexapot/right_H_q3_position_controller/command"
#define MSG_KinectCamera_controller "/EISpider/KinectCamera_controller/command"
#define MSG_fake_controller "/EISpider/fake_controller/command"

//机器人机身构型参数
#define INCLUDE_ANGLE M_PI/4
#define BODY_LENGTH 0.25
#define BODY_WIDTH_LARGE 0.18
#define BODY_WIDTH_SMALL 0.12

//延时时间
#define DELAY_TIME 50

//操控指令参数阈值
#define DEF_STRIDE_X 0.1
#define DEF_STRIDE_Y 0.1
#define DEF_POSITION_X 0.06
#define DEF_POSITION_Y 0.06
#define DEF_YAW 10
#define DEF_PITCH 15
#define DEF_ROLL 15
#define DEF_MAX_BODYHEIGHT 0.18
#define DEF_MIN_BODYHEIGHT 0.05
#define DEF_MAX_STEPHEIGHT 0.1
#define DEF_MIN_STEPHEIGHT 0
#define DEF_MAX_TCYCLE 10
#define DEF_MIN_TCYCLE 0.5

//初始值
#define DEF_INIT_STEPHEIGHT 0.03
#define DEF_INIT_TCYCLE 0.5
#define DEF_INIT_BODYHEIGHT L3
#define DEF_INIT_GAIT 2

#endif


/*-------------------------------小白六足-------------------------------------------*/
#ifdef XIAOBAI
//机器人名称
#define ROBOT_NAME "Hexapot"
#define BASELINK_NAME "body_link"
//单腿连杆长度
#define L1 0.05
#define L2 0.055
#define L3 0.1

//关节话题消息
#define MSG_LF1 "/Hexapot/left_F_q1_position_controller/command"
#define MSG_LF2 "/Hexapot/left_F_q2_position_controller/command"
#define MSG_LF3 "/Hexapot/left_F_q3_position_controller/command"
#define MSG_LM1 "/Hexapot/left_M_q1_position_controller/command"
#define MSG_LM2 "/Hexapot/left_M_q2_position_controller/command"
#define MSG_LM3 "/Hexapot/left_M_q3_position_controller/command"
#define MSG_LH1 "/Hexapot/left_H_q1_position_controller/command"
#define MSG_LH2 "/Hexapot/left_H_q2_position_controller/command"
#define MSG_LH3 "/Hexapot/left_H_q3_position_controller/command"
#define MSG_RF1 "/Hexapot/right_F_q1_position_controller/command"
#define MSG_RF2 "/Hexapot/right_F_q2_position_controller/command"
#define MSG_RF3 "/Hexapot/right_F_q3_position_controller/command"
#define MSG_RM1 "/Hexapot/right_M_q1_position_controller/command"
#define MSG_RM2 "/Hexapot/right_M_q2_position_controller/command"
#define MSG_RM3 "/Hexapot/right_M_q3_position_controller/command"
#define MSG_RH1 "/Hexapot/right_H_q1_position_controller/command"
#define MSG_RH2 "/Hexapot/right_H_q2_position_controller/command"
#define MSG_RH3 "/Hexapot/right_H_q3_position_controller/command"

//机器人机身构型参数
#define INCLUDE_ANGLE M_PI/6
#define BODY_LENGTH 0.174
#define BODY_WIDTH_LARGE 0.2
#define BODY_WIDTH_SMALL 0.1

//延时时间
#define DELAY_TIME 100

//操控指令参数阈值
#define DEF_STRIDE_X 0.1
#define DEF_STRIDE_Y 0.1
#define DEF_POSITION_X 0.06
#define DEF_POSITION_Y 0.06
#define DEF_YAW 10
#define DEF_PITCH 15
#define DEF_ROLL 15
#define DEF_MAX_BODYHEIGHT 0.18
#define DEF_MIN_BODYHEIGHT 0.05
#define DEF_MAX_STEPHEIGHT 0.1
#define DEF_MIN_STEPHEIGHT 0
#define DEF_MAX_TCYCLE 10
#define DEF_MIN_TCYCLE 0.5

//初始值
#define DEF_INIT_STEPHEIGHT 0.01
#define DEF_INIT_TCYCLE 0.5
#define DEF_INIT_BODYHEIGHT L3
#define DEF_INIT_GAIT 2

#endif


/*-------------------------------小白六足实物-------------------------------------------*/
#ifdef XIAOBAISHIWU
//机器人名称
#define ROBOT_NAME "Hexapot"
#define BASELINK_NAME "body_link"
//单腿连杆长度
#define L1 0.055
#define L2 0.05
#define L3 0.05

//关节话题消息
#define MSG_LF1 "/EISpider/left_F_q1_position_controller/command"
#define MSG_LF2 "/EISpider/left_F_q2_position_controller/command"
#define MSG_LF3 "/EISpider/left_F_q3_position_controller/command"
#define MSG_LM1 "/EISpider/left_M_q1_position_controller/command"
#define MSG_LM2 "/EISpider/left_M_q2_position_controller/command"
#define MSG_LM3 "/EISpider/left_M_q3_position_controller/command"
#define MSG_LH1 "/EISpider/left_H_q1_position_controller/command"
#define MSG_LH2 "/EISpider/left_H_q2_position_controller/command"
#define MSG_LH3 "/EISpider/left_H_q3_position_controller/command"
#define MSG_RF1 "/EISpider/right_F_q1_position_controller/command"
#define MSG_RF2 "/EISpider/right_F_q2_position_controller/command"
#define MSG_RF3 "/EISpider/right_F_q3_position_controller/command"
#define MSG_RM1 "/EISpider/right_M_q1_position_controller/command"
#define MSG_RM2 "/EISpider/right_M_q2_position_controller/command"
#define MSG_RM3 "/EISpider/right_M_q3_position_controller/command"
#define MSG_RH1 "/EISpider/right_H_q1_position_controller/command"
#define MSG_RH2 "/EISpider/right_H_q2_position_controller/command"
#define MSG_RH3 "/EISpider/right_H_q3_position_controller/command"
#define MSG_HEAD_ROTATE "/head_Rotate"
#define MSG_KinectCamera_controller "/EISpider/KinectCamera_controller/command"
#define MSG_fake_controller "/head_Rotate"

//机器人机身构型参数
#define INCLUDE_ANGLE M_PI/6
#define BODY_LENGTH 0.18
#define BODY_WIDTH_LARGE 0.17
#define BODY_WIDTH_SMALL 0.08

//延时时间
#define DELAY_TIME 30
//操控指令参数阈值
#define DEF_STRIDE_X 0.06
#define DEF_STRIDE_Y 0.06
#define DEF_POSITION_X 0.06
#define DEF_POSITION_Y 0.06
#define DEF_YAW 10
#define DEF_PITCH 15
#define DEF_ROLL 15
#define DEF_MAX_BODYHEIGHT 0.08
#define DEF_MIN_BODYHEIGHT 0.01
#define DEF_MAX_STEPHEIGHT 0.08
#define DEF_MIN_STEPHEIGHT 0
#define DEF_MAX_TCYCLE 10
#define DEF_MIN_TCYCLE 0.5

//初始值
#define DEF_INIT_STEPHEIGHT 0.01
#define DEF_INIT_TCYCLE 0.5
#define DEF_INIT_BODYHEIGHT L3
#define DEF_INIT_GAIT 2

#endif
/*---------------------------------幻尔小六足机器人------------------------------------------*/
#ifdef JETHEXA
//机器人名称
#define ROBOT_NAME "jethexa"
#define BASELINK_NAME "body_link"
//单腿连杆长度
#define L1 0.045
#define L2 0.077
#define L3 0.123

//关节话题消息
#define MSG_LF1 "/coxa_joint_LF_position_controller/command"
#define MSG_LF2 "/femur_joint_LF_position_controller/command"
#define MSG_LF3 "/tibia_joint_LF_position_controller/command"
#define MSG_LM1 "/coxa_joint_LM_position_controller/command"
#define MSG_LM2 "/femur_joint_LM_position_controller/command"
#define MSG_LM3 "/tibia_joint_LM_position_controller/command"
#define MSG_LH1 "/coxa_joint_LR_position_controller/command"
#define MSG_LH2 "/femur_joint_LR_position_controller/command"
#define MSG_LH3 "/tibia_joint_LR_position_controller/command"
#define MSG_RF1 "/coxa_joint_RF_position_controller/command"
#define MSG_RF2 "/femur_joint_RF_position_controller/command"
#define MSG_RF3 "/tibia_joint_RF_position_controller/command"
#define MSG_RM1 "/coxa_joint_RM_position_controller/command"
#define MSG_RM2 "/femur_joint_RM_position_controller/command"
#define MSG_RM3 "/tibia_joint_RM_position_controller/command"
#define MSG_RH1 "/coxa_joint_RR_position_controller/command"
#define MSG_RH2 "/femur_joint_RR_position_controller/command"
#define MSG_RH3 "/tibia_joint_RR_position_controller/command"
#define MSG_HEAD_ROTATE "/head_Rotate"
#define MSG_KinectCamera_controller "/EISpider/KinectCamera_controller/command"
#define MSG_fake_controller "/head_Rotate"

//机器人机身构型参数
#define INCLUDE_ANGLE M_PI/6
#define BODY_LENGTH 0.3556
#define BODY_WIDTH_LARGE 0.165
#define BODY_WIDTH_SMALL 0.08

//延时时间
#define DELAY_TIME 30
//操控指令参数阈值
#define DEF_STRIDE_X 0.06
#define DEF_STRIDE_Y 0.06
#define DEF_POSITION_X 0.06
#define DEF_POSITION_Y 0.06
#define DEF_YAW 10
#define DEF_PITCH 15
#define DEF_ROLL 15
#define DEF_MAX_BODYHEIGHT 0.08
#define DEF_MIN_BODYHEIGHT 0.01
#define DEF_MAX_STEPHEIGHT 0.08
#define DEF_MIN_STEPHEIGHT 0
#define DEF_MAX_TCYCLE 10
#define DEF_MIN_TCYCLE 0.5

//初始值
#define DEF_INIT_STEPHEIGHT 0.01
#define DEF_INIT_TCYCLE 0.5
#define DEF_INIT_BODYHEIGHT L3
#define DEF_INIT_GAIT 2

#endif