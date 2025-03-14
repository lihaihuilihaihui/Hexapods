#pragma once

void* thread_recvCockpit(void *);

struct Common
{
    float Stop;//是否急停 0即停 1不急停
    float Parking;//parking? 0-parking 1-no parking
    float Is_Enable;//0-unenable 1-enable
    float Is_Reset;//0-unreset 1-reset
    float Is_Fault;//0-not fault 1-fault
    float Gait_Flag;//步态模式 0手动 1前向 2侧向 3特殊
    float Forword_Gait;//前向步态 2二步态 3三步态 6六步态 7自由步态 8原地转向
    float Slider_Gait;//侧向步态 2侧向二步态 3侧向三步态 6侧向六步态
    float Special_Gait;//特殊步态 1爬坡 2越障 3过沟 4涉水 5侧倾
    float Speed_Gear;//速度档位 1一档 2二挡 。。。6倒车挡 7停车档
    float Menual_models;//手动步态模式 0腿部 1机体
    float Menual_Select_legLF;//0-not select LF leg  1-select LF leg
    float Menual_Select_legLM;//0-not select LM leg  1-select LM leg
    float Menual_Select_legLH;//0-not select LH leg  1-select LH leg
    float Menual_Select_legRF;//0-not select RF leg  1-select RF leg
    float Menual_Select_legRM;//0-not select RM leg  1-select RM leg
    float Menual_Select_legRH;//0-not select RH leg  1-select RH leg
    //float Direct;
    float Speed;//行进速度 *
    float LegPos_x;//单腿x增量
    float LegPos_y;//单腿y增量
    float LegPos_z;//单腿z增量
    float Menual_body_x;//手动步态机体x增量
    float Menual_body_y;//手动步态机体y增量
    float Menual_body_z;//手动步态机体z增量
    float Body_Pitch;//俯仰角 *
    float Body_Roll;//翻滚角 *
    float Body_X;//机身x方向位移 *
    float Body_Y;//机身y方向位移 *
    float Body_Z;//机身高度 *
    float Stride_x;//x方向步幅 *
    float Stride_y;//y方向步幅 *
    float Height;//步高 *
    float yaw;//偏航
    float pingtaiSwitch;//0平台停止 1平台运行
	float CameraLeftRight;//摄像头左右
	float CameraUpDown;//摄像头上下
};


struct SendQtMsg
{
    float Stop;
    float Parking;
    float Is_Enable;
    float Is_Reset;
    float Is_Fault;
    float Gait_Flag;
    float Forword_Gait;
    float Slider_Gait;
    float Special_Gait;
    float Speed_Gear;
    float Menual_models;
    float Menual_Select_legLF;
    float Menual_Select_legLM;
    float Menual_Select_legLH;
    float Menual_Select_legRF;
    float Menual_Select_legRM;
    float Menual_Select_legRH;
    float Direct;
    float Speed;
    float Body_Pitch;
    float Body_Roll;
    float Body_Yaw;
    float Body_X;
    float Body_Y;
    float Body_Z;
    float Stride_x;
    float Stride_y;
    float Height;
    float LF_x;
    float LF_y;
    float LF_z;
    float LM_x;
    float LM_y;
    float LM_z;
    float LH_x;
    float LH_y;
    float LH_z;
    float RF_x;
    float RF_y;
    float RF_z;
    float RM_x;
    float RM_y;
    float RM_z;
    float RH_x;
    float RH_y;
    float RH_z;
};