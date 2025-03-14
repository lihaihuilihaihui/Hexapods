#pragma once
#include <grid_map_msgs/GridMap.h>
#include <grid_map_ros/grid_map_ros.hpp>
#include <fstream>

class GridMapInfo
{
private:
    std::ifstream infile;
    grid_map::GridMap gridMap;
    grid_map_msgs::GridMap message;
public:
    void InitGridMap();
    void SetGridMapData(const char* layer, double x, double y, double z, bool isRobot=true);
    void RosPubGridMsg();
};