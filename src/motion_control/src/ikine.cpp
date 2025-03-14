#include"motion_control/ikine.h"
#include"motion_control/config.h"
#include<math.h>

/*逆运动学*/
void ikine(hexapod_msg::footPosition position, hexapod_msg::legAngle & angle, enum LEGNUM num)
{
    hexapod_msg::footPosition position1;
    position1 = position;
    switch (num)
    {
    case LEGNUM::LF:
        {
            position.x = position1.x * cos(M_PI/6) + position1.y * sin(M_PI/6);
            position.y = -position1.x * sin(M_PI/6) + position1.y * cos(M_PI/6);
        }
        break;
    case LEGNUM::LM:
        {
            position.x = position1.y;
            position.y = -position1.x;
        }
        break;
    case LEGNUM::LH:
        {
            position.x = -position1.x * cos(M_PI/6) + position1.y * sin(M_PI/6);
            position.y = -position1.x * sin(M_PI/6) - position1.y * cos(M_PI/6);
        }
        break;
    case LEGNUM::RF:
        {
            position.x = position1.x * cos(M_PI/6) - position1.y * sin(M_PI/6);
            position.y = position1.x * sin(M_PI/6) + position1.y * cos(M_PI/6);
        }
        break;
    case LEGNUM::RM:
        {
            position.x = -position1.y;
            position.y = position1.x;
        }
        break;
    case LEGNUM::RH:
        {
            position.x = -position1.x * cos(M_PI/6) - position1.y * sin(M_PI/6);
            position.y = position1.x * sin(M_PI/6) - position1.y * cos(M_PI/6);
        }
        break;
    default:
        break;
    }
    try
    {
        angle.Angle1 = atan2(position.y, position.x);
        double X = position.x - cos(angle.Angle1) * L1;
        double Y = position.y - sin(angle.Angle1) * L1;
        double Z = position.z; 
        angle.Angle3 = -1 * acos((pow(X,2) + pow(Y,2) + pow(Z,2) - pow(L2,2) - pow(L3,2))/(2*L2*L3));
        angle.Angle2 = -1 * atan2((L3*sin(angle.Angle3)),(L2+L3*cos(angle.Angle3))) + atan2(position.z,sqrt(pow(X,2)+pow(Y,2)));
    } 
    catch(char * str)
    {
        printf("error!");
    }
}