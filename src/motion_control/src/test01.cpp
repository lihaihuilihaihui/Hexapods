// #include"ros/ros.h"
// #include"sensor_msgs/JoyFeedbackArray.h"
// #include<vector>
// #include"sensor_msgs/JoyFeedback.h"
// using namespace std;
// int main(int argc, char * argv[])
// {
//     setlocale(LC_ALL,"");
//     ros::init(argc,argv,"jskagjsg");
//     ros::NodeHandle nh;
//     ros::Publisher pub = nh.advertise<sensor_msgs::JoyFeedbackArray>("/joy/set_feedback",100);
//     sensor_msgs::JoyFeedbackArray a;
//     vector<sensor_msgs::JoyFeedback> aa(100);
//     for(int i=0; i<100; i++)
//     {
        
//         aa[i].type = 1;
//         aa[i].id = 0;
//         aa[i].intensity = 1;
//     }
//     a.array = aa;
//     while (ros::ok)
//     {
//         pub.publish(a);
//     }
//     return 0;
// }

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// #include <ros/ros.h>
// #include <nav_msgs/OccupancyGrid.h>

// int main(int argc, char** argv)
// {
//   // 初始化ROS节点
//   ros::init(argc, argv, "map_publisher");
//   ros::NodeHandle nh;

//   // 创建一个名为map的发布者，用于发布占用地图消息
//   ros::Publisher map_pub = nh.advertise<nav_msgs::OccupancyGrid>("map", 1);

//   // 创建占用地图消息
//   nav_msgs::OccupancyGrid map;
//   map.header.frame_id = "map";
//   map.info.resolution = 0.1;
//   map.info.width = 10;
//   map.info.height = 10;
//   map.info.origin.position.x = -0.5;
//   map.info.origin.position.y = -0.5;
//   map.info.origin.orientation.w = 1.0;

//   // 设置所有单元格为50
//   map.data.resize(map.info.width * map.info.height, 255);

//   // 发布占用地图消息
//   while(ros::ok())
//   {
//     map.header.stamp = ros::Time::now();
//     map_pub.publish(map);
//     ros::spinOnce();
//   }

//   return 0;
// }

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#include <ros/ros.h>
#include <geometry_msgs/PointStamped.h>
#include <nav_msgs/Path.h>

int main(int argc, char** argv)
{
    ros::init(argc, argv, "foot_trajectory_publisher");
    ros::NodeHandle nh;

    ros::Publisher path_pub = nh.advertise<nav_msgs::Path>("foot_trajectory", 10);

    ros::Rate rate(10); // 发布频率为10Hz

    while (ros::ok())
    {
        nav_msgs::Path path;
        path.header.stamp = ros::Time::now();
        path.header.frame_id = "link_base"; // 设置路径的参考坐标系

        // 添加足端轨迹点
        for (double t = 0.0; t <= 2.0 * M_PI; t += 0.1)
        {
            geometry_msgs::PoseStamped pose;
            pose.header.stamp = ros::Time::now();
            pose.header.frame_id = "link_base";
            pose.pose.position.x = cos(t); // 模拟足端的X坐标
            pose.pose.position.y = 0; // 模拟足端的Y坐标
            pose.pose.position.z = sin(t);    // 模拟足端的Z坐标
            pose.pose.orientation.x = 0;
            pose.pose.orientation.y = 0;
            pose.pose.orientation.z = 0;
            pose.pose.orientation.w = 1;
            path.poses.push_back(pose);
        }

        // 发布路径
        path_pub.publish(path);

        ros::spinOnce();
        rate.sleep();
    }

    return 0;
}
