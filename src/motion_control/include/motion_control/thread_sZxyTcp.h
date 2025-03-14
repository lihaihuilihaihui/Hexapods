#pragma once
struct  st_recvInfo
{
    double movevelbackfeed;   //机器人直行速度
    double yawbackfeed;     //机器人转向速度
};


struct  st_sendInfo
{
    double beishu;  //直行速度
    double currentButtons; //按钮
    double yaw;     //转向速度
};

void *thread_sZxyTcp(void * arg);
