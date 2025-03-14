#pragma once
#include<ros/ros.h>
#include"std_msgs/Float64.h"
#include<gazebo_msgs/ModelStates.h>
#include<sensor_msgs/Imu.h>
#include"nav_msgs/Odometry.h"
#include "tf2_ros/transform_broadcaster.h"
#include "geometry_msgs/TransformStamped.h"
#include "tf2/LinearMath/Quaternion.h"
#include <grid_map_msgs/GridMap.h>
#include <grid_map_ros/grid_map_ros.hpp>


/*该类通过ros接口控制机器人，只用一个对象即可，可以使用单例设计模式*/
class ROSTool
{
public:
    //获取唯一的单例对象
    static ROSTool* GetInstance(){
        static ROSTool s;
        return &s;
    }
    //ros初始化
    void ROSInit(int &argc, char ** &argv);
    //ros向机器人发布关节转角接口
    void RosPubLF1(double angle);
    void RosPubLF2(double angle);
    void RosPubLF3(double angle);
    void RosPubLM1(double angle);
    void RosPubLM2(double angle);
    void RosPubLM3(double angle);
    void RosPubLH1(double angle);
    void RosPubLH2(double angle);
    void RosPubLH3(double angle);
    void RosPubRF1(double angle);
    void RosPubRF2(double angle);
    void RosPubRF3(double angle);
    void RosPubRM1(double angle);
    void RosPubRM2(double angle);
    void RosPubRM3(double angle);
    void RosPubRH1(double angle);
    void RosPubRH2(double angle);
    void RosPubRH3(double angle);
    void RosPubFake(double angle);
    void RosPubKinectCamera(double angle);
    void RosPubOdomData(nav_msgs::Odometry& data);
    void RosPubTFBaseToOdom(geometry_msgs::TransformStamped& data);
    void RosPubStability(double data);
    void RosPubGridMap(grid_map_msgs::GridMap mapMsg);
    void RosPubEnergy(double data);
    void RosPubColliction(double data);
private:
    //定义每个关节对应的话题发布者
    ros::Publisher pubLF1;
    ros::Publisher pubLF2;
    ros::Publisher pubLF3;
    ros::Publisher pubLM1;
    ros::Publisher pubLM2;
    ros::Publisher pubLM3;
    ros::Publisher pubLH1;
    ros::Publisher pubLH2;
    ros::Publisher pubLH3;
    ros::Publisher pubRF1;
    ros::Publisher pubRF2;
    ros::Publisher pubRF3;
    ros::Publisher pubRM1;
    ros::Publisher pubRM2;
    ros::Publisher pubRM3;
    ros::Publisher pubRH1;
    ros::Publisher pubRH2;
    ros::Publisher pubRH3;
    ros::Publisher pubOdom;
    tf2_ros::TransformBroadcaster* pubBroadcaster;
    ros::Subscriber subIMU;//订阅imu消息
    ros::Subscriber subModel;//订阅模型消息
    ros::Subscriber subJoy;//订阅手柄消息
    ros::Timer timer;//用来对记录数据进行定时记录
    ros::Publisher pubStability;//发布稳定裕度数据
    ros::Subscriber cmd_vel_subscriber;//订阅cmd_vel话题消息
    ros::Publisher gridMapPublisher;//用来发布珊格地图数据
    ros::Publisher pubFake;
    ros::Publisher pubKinectCamera;
    ros::Publisher pubEnergy;
    ros::Subscriber sub_Collection;
    ros::Publisher pubConnection;
    
private:
    //单例模式，构造析构和拷贝构造私有化
    ROSTool(){
    }
    ~ROSTool(){}
    ROSTool(const ROSTool & f){}

    // static ROSTool* g_rosTool;

};