#include"motion_control/thread_sendBase.h"
#include"motion_control/thread_recvCockpit.h"
#include"motion_control/gait.h"
#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <stdlib.h>
#include <string.h>
#include <sys/time.h>
extern Gait hexapodRobot;
extern Common Codesys_Com;//接收平台指令数据
void * thread_sendBase(void * arg)
{
    #ifdef JIASHICANG
    double PosZ = 0;
    //UDP部分
    int sock_fd = socket(AF_INET, SOCK_DGRAM, 0);
    if (sock_fd < 0)
    {
        printf("客户端Socket创建失败");
        return (void*)(-1);
    }
    struct sockaddr_in server_addr;
    bzero(&server_addr, sizeof(server_addr));
    server_addr.sin_family = AF_INET;
    server_addr.sin_addr.s_addr = inet_addr("192.168.1.88");
    server_addr.sin_port = htons(8080);//指定端口号

    unsigned char sendData[64] = {0};
    unsigned char zhou7 = 0;
    unsigned char common = 33;//平台控制指令
    unsigned char Length = 100;//默认100 范围0-100
    unsigned char Velocity = 50;//平台速度特性，值越大越快，默认100 范围0-100 100对应电机额定转速
    unsigned char Accelerate = 50;//平台刚度特性，数值越大平台速度越刚，默认100。范围0-100
    unsigned char a1 = 0x54;
    unsigned char a2 = 0x6f;
    unsigned char a3 = 0x43;
    unsigned char res = 0;
    unsigned char * pData = sendData;
    while(1)
    {
        double posZ = hexapodRobot.m_get_posZ;
        double posX = hexapodRobot.m_PosX * 100;
        double posY = hexapodRobot.m_PosY * 100;
        //发给平台的数据限制一下
        if(hexapodRobot.m_get_pitch > 10)
            hexapodRobot.m_get_pitch = 10;
        if(hexapodRobot.m_get_pitch < -10)
            hexapodRobot.m_get_pitch = -10;

        if(hexapodRobot.m_get_roll > 10)
            hexapodRobot.m_get_roll = 10;
        if(hexapodRobot.m_get_roll < -10)
            hexapodRobot.m_get_roll = -10;

        if(posX > 20)
            posX = 20;
        if(posX < -20)
            posX = -20;

        if(posY < -15)
            posY = -15;  
        if(posY > 15)
            posY = 15;
        
        if(hexapodRobot.m_yaw > 10)
            hexapodRobot.m_yaw = 10;
        if(hexapodRobot.m_yaw < -10)
            hexapodRobot.m_yaw = -10;


        struct timeval time;
        gettimeofday(&time, NULL);
        unsigned int tt = time.tv_sec*1000+time.tv_usec/1000;//获取当前时间毫秒
        memcpy(pData, &tt, 4);//存储时间戳
        pData+=4;
        memcpy(pData, &hexapodRobot.m_get_accelerationX, 4);//存储x方向加速度
        pData+=4;
        memcpy(pData, &hexapodRobot.m_get_accelerationY, 4);//存储y方向加速度
        pData+=4;
        memcpy(pData, &hexapodRobot.m_get_accelerationZ, 4);//存储z方向加速度
        pData+=4;
        memcpy(pData, &hexapodRobot.m_get_roll, 4);//存储绕x轴旋转角度  实际是俯仰角 正向后仰 最大10
        pData+=4;
        memcpy(pData, &hexapodRobot.m_get_pitch, 4);//存储绕y轴旋转角度  实际是翻滚角 正向右倾 最大10
        pData+=4;
        memcpy(pData, &hexapodRobot.m_get_angularZ, 4);//存储绕z轴旋转角速度
        pData+=4;
        memcpy(pData, &posX, 4);//存储x方向位移  实际y向 正值向右
        pData+=4;
        memcpy(pData, &posY, 4);//存储y方向位移 实际x向 正值向前
        pData+=4;
        memcpy(pData, &PosZ, 4);//存储Z方向位移
        pData+=4;
        memcpy(pData, &hexapodRobot.m_get_angularX, 4);//存储绕x轴旋转角速度
        pData+=4;
        memcpy(pData, &hexapodRobot.m_get_angularY, 4);//存储绕y轴旋转角速度
        pData+=4;
        memcpy(pData, &hexapodRobot.m_yaw, 4);//存储绕z轴旋转的角度 就是yaw角 正值往左 最大10
        pData+=4;
        memcpy(pData, &zhou7, 4);//存储绕第7轴旋转的角度
        pData+=4;
        memcpy(pData, &common, 1);//存储平台控制指令
        pData+=1;
        memcpy(pData, &Length, 1);
        pData+=1;
        memcpy(pData, &Velocity, 1);//存储平台速度特性
        pData+=1;
        memcpy(pData, &Accelerate, 1);//存储平台刚度特性
        pData+=1;
        memcpy(pData, &a1, 1);
        pData+=1;
        memcpy(pData, &a2, 1);
        pData+=1;
        memcpy(pData, &a3, 1);
        pData+=1;
        for (int i = 0; i < 63; i++)
        {
            res += pData[i];
        }


        memcpy(pData, &res, 1);
        pData = sendData;
        if(Codesys_Com.pingtaiSwitch == 1)
            sendto(sock_fd, sendData, sizeof(sendData), 0, (const sockaddr*)&server_addr, sizeof(server_addr));
        // printf("run?:%f",Codesys_Com.pingtaiSwitch);
        // printf("毫秒：%d\n",tt);
        // printf("翻滚\t\t：%f\t俯仰：%f\t偏航：%f\n",hexapodRobot.m_get_roll,hexapodRobot.m_get_pitch,hexapodRobot.m_yaw);
        // printf("机身位置x\t\t：%f\ty：%f\tz：%f\n",posX,posY,PosZ);
        // printf("机器人线加速度x\t\t：%f\ty：%f\tz：%f\n",hexapodRobot.m_get_accelerationX,hexapodRobot.m_get_accelerationY,hexapodRobot.m_get_accelerationZ);
        // printf("机器人角速度x\t\t：%f\ty：%f\tz：%f\n",hexapodRobot.m_get_angularX,hexapodRobot.m_get_angularY,hexapodRobot.m_get_angularZ);
        
        // printf("=========================================================================\n");
        usleep(100000);
    }    
    #endif
}