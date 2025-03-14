#include"motion_control/thread_baseToOdom.h"
#include"motion_control/ros_tool.h"
#include"motion_control/gait.h"
extern ROSTool * g_rosTool;
extern Gait hexapodRobot;

void * thread_baseToOdom(void * arg)
{
    //sleep(0);
    // geometry_msgs::TransformStamped tfs;
    geometry_msgs::TransformStamped tfs_map;
    while (ros::ok)
    {
        //  |----头设置
        // tfs.header.frame_id = "odom";
        // tfs.header.stamp = ros::Time::now();
        tfs_map.header.frame_id = "odom";
        tfs_map.header.stamp = ros::Time::now();

        //  |----坐标系 ID
        // tfs.child_frame_id = BASELINK_NAME;
        // tfs.transform.translation.x = hexapodRobot.m_get_posX;
        // tfs.transform.translation.y = hexapodRobot.m_get_posY;
        // tfs.transform.translation.z = hexapodRobot.m_get_posZ;
        // tfs.transform.rotation.x = hexapodRobot.m_get_quaternion_x;
        // tfs.transform.rotation.y = hexapodRobot.m_get_quaternion_y;
        // tfs.transform.rotation.z = hexapodRobot.m_get_quaternion_z;
        // tfs.transform.rotation.w = hexapodRobot.m_get_quaternion_w;
        tfs_map.child_frame_id = BASELINK_NAME;
        tfs_map.transform.translation.x = hexapodRobot.m_get_posX-10.658228;
        tfs_map.transform.translation.y = hexapodRobot.m_get_posY;
        tfs_map.transform.translation.z = hexapodRobot.m_get_posZ;
        tfs_map.transform.rotation.x = hexapodRobot.m_get_quaternion_x;
        tfs_map.transform.rotation.y = hexapodRobot.m_get_quaternion_y;
        tfs_map.transform.rotation.z = hexapodRobot.m_get_quaternion_z;
        tfs_map.transform.rotation.w = hexapodRobot.m_get_quaternion_w;
        g_rosTool->RosPubTFBaseToOdom(tfs_map);
        // g_rosTool->RosPubTFBaseToOdom(tfs);
    }
    
}