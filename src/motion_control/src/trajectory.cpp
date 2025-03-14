#include"motion_control/trajectory.h"



/*根据起始和终止坐标来规划轨迹*/
hexapod_msg::legAngle getTrajectory(hexapod_msg::footPosition & start, hexapod_msg::footPosition & end, double height, double t, double Ts, double T, hexapod_msg::footPosition & currentPosition, enum LEGNUM num, bool &isSwing)
{
    hexapod_msg::footPosition footposition;
    hexapod_msg::legAngle legangle;
    double sigma;
    if(t < Ts)//摆动相
    {
        sigma = 2*M_PI*t/Ts;
        footposition.x = (end.x-start.x)*((sigma-sin(sigma))/(2*M_PI))+start.x;
        footposition.y = (end.y-start.y)*((sigma-sin(sigma))/(2*M_PI))+start.y;
        footposition.z = height*(1-cos(sigma))/2+start.z;
        ikine(footposition, legangle, num);
        isSwing = true;
    }
    else//支撑相
    {
        footposition.x = end.x-(end.x-start.x)/(T-Ts)*(t-Ts);
        footposition.y = end.y-(end.y-start.y)/(T-Ts)*(t-Ts);
        footposition.z = end.z-(end.z-start.z)/(T-Ts)*(t-Ts);
        ikine(footposition, legangle, num);
        isSwing = false;
    }
    currentPosition.x = footposition.x;
    currentPosition.y = footposition.y;
    currentPosition.z = footposition.z;
    return legangle; 
}