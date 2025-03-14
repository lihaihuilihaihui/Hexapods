#include"motion_control/thread_recvCockpit.h"
#include"motion_control/gait.h"
#include <unistd.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <stdlib.h>
#include <string.h>
#include"motion_control/config.h"
#include<iostream>
using namespace std;

Common Codesys_Com;//接收平台指令数据
SendQtMsg QtSend_Com;//向界面发送数据
extern Gait hexapodRobot;
void* thread_recvCockpit(void * arg)
{
    #ifdef JIASHICANG
    /*接收驾驶台数据网络初始化*/
    int sock_fd = socket(AF_INET, SOCK_DGRAM, 0);
    if (sock_fd < 0)
    {
        printf("接受数据套接字创建失败");
        return (void*)(-1);
    }
    struct sockaddr_in server_addr;
    bzero(&server_addr, sizeof(server_addr));
    server_addr.sin_family = AF_INET;
    server_addr.sin_addr.s_addr = inet_addr("0.0.0.0");
    server_addr.sin_port = htons(8088);//指定端口号
    bind(sock_fd, (const sockaddr*)&server_addr, sizeof(server_addr));


    /*向界面发送消息网络初始化*/
    int sock_fdSend = socket(AF_INET, SOCK_DGRAM, 0);
    if (sock_fdSend < 0)
    {
        printf("server Socket创建失败");
        return (void*)(-1);
    }
    struct sockaddr_in sendQtaddr;
    bzero(&sendQtaddr, sizeof(sendQtaddr));
    sendQtaddr.sin_addr.s_addr = inet_addr("169.254.152.252");
    sendQtaddr.sin_family = AF_INET;
    sendQtaddr.sin_port = htons(1234);
    
    while(1)
    {
        recvfrom(sock_fd, &Codesys_Com, sizeof(Codesys_Com),0,nullptr,nullptr);
        Codesys_Com.Stride_x = Codesys_Com.Stride_x * 0.06 / 0.8;
        Codesys_Com.Stride_y = Codesys_Com.Stride_y * 0.06 / 0.8;
        Codesys_Com.Body_X = Codesys_Com.Body_X * 0.06 / 0.3;
        Codesys_Com.Body_Y = Codesys_Com.Body_Y * 0.06 / 0.3;
        Codesys_Com.Body_Z = Codesys_Com.Body_Z * 0.08 / 0.8;
        Codesys_Com.Height = Codesys_Com.Height * 0.08 / 0.5;


        cout<<"stop"<<" "<<Codesys_Com.Stop<<endl;
        cout<<"Parking"<<" "<<Codesys_Com.Parking<<endl;
        cout<<"is_enable"<<" "<<Codesys_Com.Is_Enable<<endl;
        cout<<"is_reset"<<" "<<Codesys_Com.Is_Reset<<endl;
        cout<<"fault"<<" "<<Codesys_Com.Is_Fault<<endl;
        cout<<"gait_flag"<<" "<<Codesys_Com.Gait_Flag<<endl;
        cout<<"forword_gait"<<" "<<Codesys_Com.Forword_Gait<<endl;
        cout<<"slider_gait"<<" "<<Codesys_Com.Slider_Gait<<endl;
        cout<<"stepHeight"<<" "<<Codesys_Com.Height<<endl;
        cout<<"body_Height"<<" "<<Codesys_Com.Body_Z<<endl;
        cout<<"pitch"<<" "<<Codesys_Com.Body_Pitch<<endl;
        cout<<"roll"<<" "<<Codesys_Com.Body_Roll<<endl;
        cout<<"yaw"<<" "<<Codesys_Com.yaw<<endl;
        cout<<"stride_x"<<" "<<Codesys_Com.Stride_x<<endl;
        cout<<"stride_y"<<" "<<Codesys_Com.Stride_y<<endl;
        cout<<"camera_left"<<" "<<Codesys_Com.CameraLeftRight<<endl;
        cout<<"camera_up"<<" "<<Codesys_Com.CameraUpDown<<endl;
        cout<<"==============================================="<<endl;
        hexapodRobot.m_isParking = !Codesys_Com.Parking;
        hexapodRobot.driverCommands.gaitCycle = 15 - Codesys_Com.Speed;//速度
        hexapodRobot.driverCommands.pitch = Codesys_Com.Body_Pitch;//俯仰角
        hexapodRobot.driverCommands.roll = Codesys_Com.Body_Roll;//翻滚角
        hexapodRobot.driverCommands.posX = Codesys_Com.Body_X;//机身x方向偏移
        hexapodRobot.driverCommands.posY = Codesys_Com.Body_Y;//机身y方向偏移
        hexapodRobot.driverCommands.bodyHeight = Codesys_Com.Body_Z-0.1;//机身高度
        hexapodRobot.cameraLeftRightAngle = Codesys_Com.CameraLeftRight*180/3.14;
        hexapodRobot.setLeftAndRightLook(hexapodRobot.cameraLeftRightAngle);
        if((Codesys_Com.Gait_Flag==1) && (Codesys_Com.Forword_Gait==8))//原地转向
        {
            hexapodRobot.driverCommands.strideX = 0;//步幅清零
            hexapodRobot.driverCommands.strideY = 0;//步幅清零
        } 
        else if(Codesys_Com.Gait_Flag==2)//侧向步态
        {
            hexapodRobot.driverCommands.strideX = 0;//步幅清零
            hexapodRobot.driverCommands.strideY = Codesys_Com.Stride_y;//步幅清零
        }
        else
        {
            hexapodRobot.driverCommands.strideX = Codesys_Com.Stride_x;//x方向步幅
            hexapodRobot.driverCommands.strideY = Codesys_Com.Stride_y;//y方向步幅
        }
            
        hexapodRobot.driverCommands.stepHeight = Codesys_Com.Height;//步高
        if(Codesys_Com.Speed_Gear == 6)//倒车档位
        {
            hexapodRobot.driverCommands.strideX = -Codesys_Com.Stride_x;
            hexapodRobot.driverCommands.strideY = -Codesys_Com.Stride_y;
        }
        hexapodRobot.driverCommands.yaw = Codesys_Com.yaw/180*3.14;
        if(Codesys_Com.Gait_Flag == 0)//手动步态
        {
            hexapodRobot.driverCommands.gaitFlag = 7;
        }
        else if(Codesys_Com.Gait_Flag == 1)//前向步态
        {
            if(Codesys_Com.Forword_Gait == 2)//前向二步态
            {
                hexapodRobot.driverCommands.gaitFlag = 2;
            }
            else if(Codesys_Com.Forword_Gait == 3)//前向三步态
            {
                hexapodRobot.driverCommands.gaitFlag = 3;
            }
            else if(Codesys_Com.Forword_Gait == 6)//前向六步态
            {
                hexapodRobot.driverCommands.gaitFlag = 6;
            }
            else if(Codesys_Com.Forword_Gait == 7)//自由
            {
                hexapodRobot.driverCommands.gaitFlag = 9;
            }
            else if(Codesys_Com.Forword_Gait == 8)//原地转向
            {
                hexapodRobot.driverCommands.gaitFlag = 8;
            }
        }
        else if(Codesys_Com.Gait_Flag == 2)//侧向步态
        {
            if(Codesys_Com.Slider_Gait == 2)//侧向二步态
            {
                hexapodRobot.driverCommands.gaitFlag = 20;
            }
            else if(Codesys_Com.Slider_Gait == 3)//侧向三步态
            {
                hexapodRobot.driverCommands.gaitFlag = 30;
            }
            else if(Codesys_Com.Slider_Gait == 6)//侧向六步态
            {
                hexapodRobot.driverCommands.gaitFlag = 60;
            }
        }
        else if(Codesys_Com.Gait_Flag == 3)//特殊步态
        {
            if(Codesys_Com.Special_Gait == 1)//爬坡步态
            {
                hexapodRobot.driverCommands.gaitFlag = 10;
            }
            else if(Codesys_Com.Special_Gait == 2)//越障步态
            {
                hexapodRobot.driverCommands.gaitFlag = 11;
            }
            else if(Codesys_Com.Special_Gait == 3)//过沟步态
            {
                hexapodRobot.driverCommands.gaitFlag = 12;
            }
            else if(Codesys_Com.Special_Gait == 4)//涉水步态
            {
                hexapodRobot.driverCommands.gaitFlag = 13;
            }
            else if(Codesys_Com.Special_Gait == 5)//侧倾步态
            {
                hexapodRobot.driverCommands.gaitFlag = 14;
            }
        }
        //手动步态的
        hexapodRobot.m_menual_isSelectLF = Codesys_Com.Menual_Select_legLF;
        hexapodRobot.m_menual_isSelectLM = Codesys_Com.Menual_Select_legLM;
        hexapodRobot.m_menual_isSelectLH = Codesys_Com.Menual_Select_legLH;
        hexapodRobot.m_menual_isSelectRF = Codesys_Com.Menual_Select_legRF;
        hexapodRobot.m_menual_isSelectRM = Codesys_Com.Menual_Select_legRM;
        hexapodRobot.m_menual_isSelectRH = Codesys_Com.Menual_Select_legRH;
        hexapodRobot.m_menual_del_footPosition_x = Codesys_Com.LegPos_x/10.0;
        hexapodRobot.m_menual_del_footPosition_y = Codesys_Com.LegPos_y/10.0;
        hexapodRobot.m_menual_del_footPosition_z = Codesys_Com.LegPos_z/10.0;
        hexapodRobot.m_menual_del_bodyPos_x = Codesys_Com.Menual_body_x/10.0;
        hexapodRobot.m_menual_del_bodyPos_y = Codesys_Com.Menual_body_y/10.0;
        hexapodRobot.m_menual_del_bodyPos_z = Codesys_Com.Menual_body_z/10.0;

        // printf("twoGait TCycle:%f\tpitch:%f\troll:%f\tyaw:%f\tposX:%f\tposY:%f\tbodyheight:%f\tXstride:%f\tYstride:%f\theight:%f\tGear:%d\n",hexapodRobot.m_Tcycle,hexapodRobot.m_pitch,
        //     hexapodRobot.m_roll,hexapodRobot.m_yaw,hexapodRobot.m_PosX,hexapodRobot.m_PosY,hexapodRobot.m_bodyHeight,hexapodRobot.m_stridX,hexapodRobot.m_stridY,hexapodRobot.m_stepHeight,Codesys_Com.Speed_Gear);
        

        QtSend_Com.Stop = Codesys_Com.Stop;
        QtSend_Com.Parking = Codesys_Com.Parking;
        QtSend_Com.Is_Enable = Codesys_Com.Is_Enable;
        QtSend_Com.Is_Fault = Codesys_Com.Is_Fault;
        QtSend_Com.Is_Reset = Codesys_Com.Is_Reset;
        QtSend_Com.Gait_Flag = Codesys_Com.Gait_Flag;
        QtSend_Com.Forword_Gait = Codesys_Com.Forword_Gait;
        QtSend_Com.Slider_Gait = Codesys_Com.Slider_Gait;
        QtSend_Com.Special_Gait = Codesys_Com.Special_Gait;
        QtSend_Com.Speed_Gear = Codesys_Com.Speed_Gear;
        QtSend_Com.Menual_models = Codesys_Com.Menual_models;
        QtSend_Com.Menual_Select_legLF = Codesys_Com.Menual_Select_legLF;
        QtSend_Com.Menual_Select_legLM = Codesys_Com.Menual_Select_legLM;
        QtSend_Com.Menual_Select_legLH = Codesys_Com.Menual_Select_legLH;
        QtSend_Com.Menual_Select_legRF = Codesys_Com.Menual_Select_legRF;
        QtSend_Com.Menual_Select_legRM = Codesys_Com.Menual_Select_legRM;
        QtSend_Com.Menual_Select_legRH = Codesys_Com.Menual_Select_legRH;
        // QtSend_Com.Direct = Codesys_Com.Direct;
        QtSend_Com.Speed = hexapodRobot.m_Tcycle;
        QtSend_Com.Body_Pitch = hexapodRobot.m_get_pitch;
        QtSend_Com.Body_Roll = hexapodRobot.m_get_roll;
        QtSend_Com.Body_Yaw = Codesys_Com.yaw;
        QtSend_Com.Body_X = hexapodRobot.m_PosX;
        QtSend_Com.Body_Y = hexapodRobot.m_PosY;
        QtSend_Com.Body_Z = hexapodRobot.m_bodyHeight;
        QtSend_Com.Stride_x = hexapodRobot.m_stridX;
        QtSend_Com.Stride_y = hexapodRobot.m_stridY;
        QtSend_Com.Height = hexapodRobot.m_stepHeight;
        QtSend_Com.LF_x = hexapodRobot.curLegLF_Position.x;
        QtSend_Com.LF_y = hexapodRobot.curLegLF_Position.y;
        QtSend_Com.LF_z = hexapodRobot.curLegLF_Position.z;
        QtSend_Com.LM_x = hexapodRobot.curLegLM_Position.x;
        QtSend_Com.LM_y = hexapodRobot.curLegLM_Position.y;
        QtSend_Com.LM_z = hexapodRobot.curLegLM_Position.z;
        QtSend_Com.LH_x = hexapodRobot.curLegLH_Position.x;
        QtSend_Com.LH_y = hexapodRobot.curLegLH_Position.y;
        QtSend_Com.LH_z = hexapodRobot.curLegLH_Position.z;
        QtSend_Com.RF_x = hexapodRobot.curLegRF_Position.x;
        QtSend_Com.RF_y = hexapodRobot.curLegRF_Position.y;
        QtSend_Com.RF_z = hexapodRobot.curLegRF_Position.z;
        QtSend_Com.RM_x = hexapodRobot.curLegRM_Position.x;
        QtSend_Com.RM_y = hexapodRobot.curLegRM_Position.y;
        QtSend_Com.RM_z = hexapodRobot.curLegRM_Position.z;
        QtSend_Com.RH_x = hexapodRobot.curLegRH_Position.x;
        QtSend_Com.RH_y = hexapodRobot.curLegRH_Position.y;
        QtSend_Com.RH_z = hexapodRobot.curLegRH_Position.z;
        sendto(sock_fdSend, &QtSend_Com,sizeof(QtSend_Com),0,(const sockaddr*)&sendQtaddr,sizeof(sendQtaddr));
    }
    #endif
}