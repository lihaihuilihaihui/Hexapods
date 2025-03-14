#include"motion_control/thread_robot_decision.h"
#include"motion_control/gait.h"

extern Gait hexapodRobot;

void * thread_robot_decision(void * arg)
{
    // while(1)
    // {
    //     //多级坡地
    //     if(hexapodRobot.m_get_posX < 2.2)//0度
    //     {
    //         hexapodRobot.setUpAndDownLook(1);
    //         hexapodRobot.robotCommands.strideX = 0.1;
    //         hexapodRobot.robotCommands.stepHeight = 0.1;
    //         hexapodRobot.robotCommands.pitch = 0;
    //     }
    //     else if(hexapodRobot.m_get_posX>=2.2 && hexapodRobot.m_get_posX<7.2)//20度
    //     {
    //         hexapodRobot.setUpAndDownLook(-1);
    //         hexapodRobot.robotCommands.strideX = 0.3;
    //         hexapodRobot.robotCommands.stepHeight = 0.3;
    //         hexapodRobot.robotCommands.pitch = 5;
    //     }
    //     else if(hexapodRobot.m_get_posX>=7.2 && hexapodRobot.m_get_posX<12.2)//10度
    //     {
    //         hexapodRobot.setUpAndDownLook(1);
    //         hexapodRobot.robotCommands.strideX = 0.2;
    //         hexapodRobot.robotCommands.stepHeight = 0.2;
    //         hexapodRobot.robotCommands.pitch = 3;
    //     }
    //     else if(hexapodRobot.m_get_posX>=12.2 && hexapodRobot.m_get_posX<17.2)//30度
    //     {
    //         hexapodRobot.setUpAndDownLook(-1);
    //         hexapodRobot.robotCommands.strideX = 0.6;
    //         hexapodRobot.robotCommands.stepHeight = 0.6;
    //         hexapodRobot.robotCommands.pitch = 10;
    //     }
    //     else if(hexapodRobot.m_get_posX>=17.2 && hexapodRobot.m_get_posX<22.2)//25度
    //     {
    //         hexapodRobot.setUpAndDownLook(1);
    //         hexapodRobot.robotCommands.strideX = 0.4;
    //         hexapodRobot.robotCommands.stepHeight = 0.4;
    //         hexapodRobot.robotCommands.pitch = 8;
    //     }
    // }
}