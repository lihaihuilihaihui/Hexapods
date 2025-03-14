#include"hexapod_msg/footPosition.h"
#include"hexapod_msg/legAngle.h"
#include"motion_control/ros_tool.h"
#include"motion_control/config.h"
#include"motion_control/ikine.h"
#include"motion_control/gait.h"
#include<pthread.h>
#include"motion_control/thread_job_working.h"
#include"motion_control/thread_pub_odom.h"
#include"motion_control/thread_baseToOdom.h"
#include"motion_control/thread_pub_stability.h"
#include"motion_control/thread_humanAndRobotDecision.h"
#include"motion_control/thread_gridMapPub.h"
#include"motion_control/gridMapInfo.h"
#include"motion_control/thread_recvCockpit.h"
#include"motion_control/thread_sendBase.h"
#include"motion_control/thread_robot_decision.h"
#include"motion_control/thread_sZxyTcp.h"
#include"motion_control/thread_IMUsub.h"

ROSTool * g_rosTool = ROSTool::GetInstance();
Gait hexapodRobot;
GridMapInfo myGridMap;

int main(int argc, char * argv[])
{
    setlocale(LC_ALL,"");
    ROSTool *g_ros = ROSTool::GetInstance();
    g_ros->ROSInit(argc,argv);
    myGridMap.InitGridMap();
    pthread_t working_tid, pubOdom_tid, baseToOdom_tid, stability_tid, humanAndRobotDecision_tid, 
    gridMap_tid, recvCockpit_tid, sendBase_tid, robotDecision_tid, sZxybTCP_tid, IMUsub_tid;

    int ret = pthread_create(&working_tid, NULL, thread_job_working,NULL);
    if (ret!=0)
    {
        ROS_INFO("Create thread_job_working error\n");
        exit(1);
    }
    ret = pthread_create(&baseToOdom_tid, NULL, thread_baseToOdom,NULL);
    if (ret!=0)
    {
        ROS_INFO("Create thread_baseToOdom error\n");
        exit(1);
    }
    ret = pthread_create(&pubOdom_tid, NULL, thread_pub_odom,NULL);
    if (ret!=0)
    {
        ROS_INFO("Create thread_pub_odom error\n");
        exit(1);
    }
    ret = pthread_create(&stability_tid, NULL, thread_pub_stability,NULL);
    if (ret!=0)
    {
        ROS_INFO("Create thread_pub_odom error\n");
        exit(1);
    }
    ret = pthread_create(&humanAndRobotDecision_tid, NULL, thread_humanAndRobotDecision,NULL);
    if (ret!=0)
    {
        ROS_INFO("Create thread_humanAndRobotDecision error\n");
        exit(1);
    }

    ret = pthread_create(&gridMap_tid, NULL, thread_gridMapPub,NULL);
    if (ret!=0)
    {
        ROS_INFO("Create thread_gridMapPub error\n");
        exit(1);
    }

    ret = pthread_create(&recvCockpit_tid, NULL, thread_recvCockpit,NULL);
    if (ret!=0)
    {
        ROS_INFO("Create thread_recvCockpit error\n");
        exit(1);
    }
    
    ret = pthread_create(&sendBase_tid, NULL, thread_sendBase,NULL);
    if (ret!=0)
    {
        ROS_INFO("Create thread_sendBase error\n");
        exit(1);
    }
    ret = pthread_create(&robotDecision_tid, NULL, thread_robot_decision,NULL);
    if (ret!=0)
    {
        ROS_INFO("Create thread_robot_decision error\n");
        exit(1);
    }
    ret = pthread_create(&sZxybTCP_tid, NULL, thread_sZxyTcp,NULL);
    if (ret!=0)
    {
        ROS_INFO("Create thread_robot_decision error\n");
        exit(1);
    }
    ret = pthread_create(&IMUsub_tid, NULL, thread_IMUsub,NULL);
    if (ret!=0)
    {
        ROS_INFO("Create thread_IMUsub error\n");
        exit(1);
    }
    // hexapod_msg::footPosition p1, p2;
    // p1.x = 0;
    // p1.y = L1+L2;
    // p1.z = -L3;
    // p2.x = 0;
    // p2.y =-L1-L2;
    // p2.z = -L3;
    // hexapod_msg::legAngle angle;
    // for(; ; )
    // {
    //     ikine(p1,angle,LEGNUM::LF);
    //     g_ros->RosPubLF1(angle.Angle1);
    //     g_ros->RosPubLF2(angle.Angle2);
    //     g_ros->RosPubLF3(angle.Angle3);
    //     ikine(p1,angle,LEGNUM::LM);
    //     g_ros->RosPubLM1(angle.Angle1);
    //     g_ros->RosPubLM2(angle.Angle2);
    //     g_ros->RosPubLM3(angle.Angle3);
    //     ikine(p1,angle,LEGNUM::LH);
    //     g_ros->RosPubLH1(angle.Angle1);
    //     g_ros->RosPubLH2(angle.Angle2);
    //     g_ros->RosPubLH3(angle.Angle3);
    //     ikine(p2,angle,LEGNUM::RF);
    //     g_ros->RosPubRF1(angle.Angle1);
    //     g_ros->RosPubRF2(angle.Angle2);
    //     g_ros->RosPubRF3(angle.Angle3);
    //     ikine(p2,angle,LEGNUM::RM);
    //     g_ros->RosPubRM1(angle.Angle1);
    //     g_ros->RosPubRM2(angle.Angle2);
    //     g_ros->RosPubRM3(angle.Angle3);
    //     ikine(p2,angle,LEGNUM::RH);
    //     g_ros->RosPubRH1(angle.Angle1);
    //     g_ros->RosPubRH2(angle.Angle2);
    //     g_ros->RosPubRH3(angle.Angle3);
    // }
  
    // while(1)
    // {
        // hexapodRobot.guoGouGait();
        // hexapodRobot.gaitSwitch();
        // hexapodRobot.yawThreeGait();
        // hexapodRobot.yawThreeGait();
        // hexapodRobot.gaitSwitch();
        // hexapodRobot.yawSixGait();
        // hexapodRobot.yawSixGait();
        // hexapodRobot.gaitSwitch();
    // }

    ros::spin();
    pthread_join(working_tid, NULL);
    pthread_join(baseToOdom_tid, NULL);
    pthread_join(pubOdom_tid, NULL);
    pthread_join(stability_tid, NULL);
    pthread_join(humanAndRobotDecision_tid, NULL);
    pthread_join(gridMap_tid, NULL);
    pthread_join(recvCockpit_tid, NULL);
    pthread_join(sendBase_tid, NULL);
    pthread_join(robotDecision_tid, NULL);
    pthread_join(sZxybTCP_tid, NULL);
    return 0;
}