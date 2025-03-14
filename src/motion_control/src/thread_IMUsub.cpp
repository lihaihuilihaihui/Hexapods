#include"motion_control/thread_IMUsub.h"
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
extern Gait hexapodRobot;
using namespace std;
struct IMUData
{
    float pitch;
    float roll;
    float yaw;
};

void* thread_IMUsub(void * arg)
{
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
    server_addr.sin_port = htons(8971);//指定端口号
    bind(sock_fd, (const sockaddr*)&server_addr, sizeof(server_addr));

    IMUData imuData;
    while(1)
    {
        recvfrom(sock_fd, &imuData, sizeof(imuData),0,nullptr,nullptr);
        cout<<"pitch"<<" "<<imuData.pitch<<endl;
        cout<<"roll"<<" "<<imuData.roll<<endl;
        cout<<"yaw"<<" "<<imuData.yaw<<endl;
        double level = imuData.yaw;
        double vertical = imuData.pitch;
        hexapodRobot.setLeftAndRightLook(level/180*3.14);
        hexapodRobot.setUpAndDownLook(-vertical/180*3.14);
    }

}