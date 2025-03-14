#include"motion_control/gridMapInfo.h"
#include"motion_control/ros_tool.h"

extern ROSTool * g_rosTool;
void GridMapInfo::InitGridMap()
{
    infile.open("/home/dz/eispider_ver4/src/MotionControl/include/MotionControl/kailePodi.txt");
    gridMap.add("elevation");
    gridMap.add("strideX");
    gridMap.add("stepHeight");
    gridMap.setFrameId("odom");
    const double length = 3.037975;//m 25.316456
    const double resolution = 0.015190;// m  0.126
    const grid_map::Length size(length, length);
    gridMap.setGeometry(size, resolution);
    double x, y, z;
    while (infile >> x >> y >> z)
    {
        grid_map::Index index;
        gridMap.getIndex(grid_map::Position(x-length/2, y-length/2), index); 
        gridMap.at("elevation", index) = z;
        gridMap.at("strideX", index) = 0;
        gridMap.at("stepHeight", index) = 0;
    }


}
void GridMapInfo::SetGridMapData(const char* layer, double x, double y, double z, bool isRobot)
{
    grid_map::Index index;
    if(isRobot)
        gridMap.getIndex(grid_map::Position(x, y), index); // 机器人起始位置为地图坐标原点
    else
        gridMap.getIndex(grid_map::Position(x-1.5, y-1.5), index); // 地图左下角坐标为地图坐标原点
    gridMap.at(layer, index) = z;
    
}

void GridMapInfo::RosPubGridMsg()
{
    grid_map::GridMapRosConverter::toMessage(gridMap, message);
    g_rosTool->RosPubGridMap(message);
}