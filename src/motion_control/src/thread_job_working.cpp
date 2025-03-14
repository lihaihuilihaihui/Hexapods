#include"motion_control/thread_job_working.h"
#include"motion_control/gait.h"
#include<string>
using namespace std;

extern Gait hexapodRobot;
void * thread_job_working(void * arg)
{   
    // hexapodRobot.m_stridX = 0.5;
    // hexapodRobot.m_Tcycle = 2;
    // hexapodRobot.m_bodyHeight = 0.5;
    // while(1)
    // {
    //     hexapodRobot.yawTwoGait();
    // }
    while(1)
    {
        
        if(!hexapodRobot.m_isParking)
        {
            /*将决策的指令结果作用到机器人的实际控制指令*/
            switch (hexapodRobot.m_gait)
            {
            case 2:case 20:case 8://前向二步态,侧向二步态，原地旋转
                hexapodRobot.yawTwoGait();
                break;
            case 3:case 30://前向三步态,侧向三步态
                hexapodRobot.yawThreeGait();
                break;
            case 6:case 60://前向六步态,侧向六步态
                hexapodRobot.yawSixGait();
                break;
            case 7://手动步态
                hexapodRobot.menualGait();
                break;
            case 12://过沟步态
                if(hexapodRobot.m_get_posX<=7)
                    hexapodRobot.guoGouGait(0.4,0.5,0.8,0.8,0.5,0.5,0.5,0.8,0.5,0.5,0.5);
                else
                    hexapodRobot.guoGouGait(0.4,0.4,0.8,0.7,0.5,0.4,0.5,0.7,0.5,0.4,0.5);
                hexapodRobot.driverCommands.gaitFlag = 2;
                hexapodRobot.m_gait = 2;

                break;
            default:
                break;
            }
        }
        else
        {
            hexapodRobot.gaitSwitch();
        }
    }
}