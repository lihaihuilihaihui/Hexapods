#include"motion_control/thread_pub_odom.h"
#include"motion_control/ros_tool.h"
#include"motion_control/gait.h"
extern ROSTool * g_rosTool;
extern Gait hexapodRobot;
void * thread_pub_odom(void * arg)
{
    nav_msgs::Odometry odomData;
    while(ros::ok)
    {
        // printf("夹角:%f\n", hexapodRobot.cameraLeftRightAngle*180/3.14);
        odomData.header.stamp = ros::Time::now();
        odomData.header.frame_id = "odom";
        odomData.child_frame_id = BASELINK_NAME;
        odomData.pose.pose.position.x = hexapodRobot.m_get_posX;
        odomData.pose.pose.position.y = hexapodRobot.m_get_posY;
        odomData.pose.pose.position.z = hexapodRobot.m_get_posZ;
        odomData.twist.twist.linear.x = hexapodRobot.m_get_linearX;
        odomData.twist.twist.linear.y = hexapodRobot.m_get_linearY;
        odomData.twist.twist.linear.z = hexapodRobot.m_get_linearZ;
        odomData.twist.twist.angular.x = hexapodRobot.m_get_angularX;
        odomData.twist.twist.angular.y = hexapodRobot.m_get_angularY;
        odomData.twist.twist.angular.z = hexapodRobot.m_get_angularZ;
        g_rosTool->RosPubOdomData(odomData);
    }
    
}