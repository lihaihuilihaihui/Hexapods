#include"motion_control/thread_sZxyTcp.h"
#include"motion_control/gait.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <unistd.h>

#define MAXLINE 4096
extern Gait hexapodRobot;
st_sendInfo infoSend;
st_recvInfo infoRecv;

void *thread_sZxyTcp(void * arg)
{
    // int listenfd,connfd;
    // struct sockaddr_in servaddr;

    // //创建一个TCP的socket
    // if( (listenfd = socket(AF_INET,SOCK_STREAM,0)) == -1) {
    //     printf(" create socket error: %s (errno :%d)\n",strerror(errno),errno);
    //     return 0;
    // }
	
    // //先把地址清空，检测任意IP
    // memset(&servaddr,0,sizeof(servaddr));
    // servaddr.sin_family = AF_INET;
    // servaddr.sin_addr.s_addr = htonl(INADDR_ANY);
    // servaddr.sin_port = htons(6666);

    // //地址绑定到listenfd
    // if ( bind(listenfd, (struct sockaddr*)&servaddr, sizeof(servaddr)) == -1) {
    //     printf(" bind socket error: %s (errno :%d)\n",strerror(errno),errno);
    //     return 0;
    // }

    // //监听listenfd
    // if( listen(listenfd,10) == -1) {
    //     printf(" listen socket error: %s (errno :%d)\n",strerror(errno),errno);
    //     return 0;
    // }

    // // printf("====waiting for client's request=======\n");
    // if( (connfd = accept(listenfd, (struct sockaddr *)NULL, NULL))  == -1) {
    //     printf(" accpt socket error: %s (errno :%d)\n",strerror(errno),errno);
    //     return 0;
    // }

    // while(1)
    // {
    //     int len = recv(connfd,&infoSend,sizeof(infoSend),0);
    //     if(len>0)
    //     {
    //         printf("执行速度:%.4f\t转向速度:%.4f\n",infoSend.beishu, infoSend.yaw);
    //         infoRecv.movevelbackfeed = 0.25;
    //         infoRecv.yawbackfeed = 250.25;
    //         send(connfd, &infoRecv, sizeof(infoRecv), 0);
    //     }else if(len<0){
    //         printf("接收张喜杨数据失败\n");
    //         break;
    //     }
    //     else{
    //         printf("张喜杨断开\n");
    //         if( (connfd = accept(listenfd, (struct sockaddr *)NULL, NULL))  == -1) {
    //             printf(" accpt socket error: %s (errno :%d)\n",strerror(errno),errno);
    //             return 0;
    //         }
    //     }
    // }
    // close(connfd);
    // close(listenfd);
    return 0;
}