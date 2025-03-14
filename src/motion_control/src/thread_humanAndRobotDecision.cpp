#include "motion_control/thread_humanAndRobotDecision.h"
#include "motion_control/gait.h"
extern Gait hexapodRobot;

void * thread_humanAndRobotDecision(void *)
{
    while(1)
    {
        /*根据驾驶员决策指令driverCommands和机器人决策指令robotCommands作出协同决策*/
        //全为驾驶员
        hexapodRobot.m_stridX = hexapodRobot.driverCommands.strideX;
        hexapodRobot.m_stridY = hexapodRobot.driverCommands.strideY;
        hexapodRobot.m_Tcycle = hexapodRobot.driverCommands.gaitCycle;
        hexapodRobot.m_stepHeight = hexapodRobot.driverCommands.stepHeight;
        hexapodRobot.m_gait = hexapodRobot.driverCommands.gaitFlag;
        hexapodRobot.m_PosX = hexapodRobot.driverCommands.posX;
        hexapodRobot.m_PosY = hexapodRobot.driverCommands.posY;
        hexapodRobot.m_bodyHeight = hexapodRobot.driverCommands.bodyHeight;
        hexapodRobot.m_pitch = hexapodRobot.driverCommands.pitch;
        hexapodRobot.m_roll = hexapodRobot.driverCommands.roll;
        hexapodRobot.m_yaw = hexapodRobot.driverCommands.yaw;

        // //全为机器人
        // hexapodRobot.m_stridX = hexapodRobot.robotCommands.strideX;
        // hexapodRobot.m_stridY = hexapodRobot.robotCommands.strideY;
        // hexapodRobot.m_Tcycle = hexapodRobot.robotCommands.gaitCycle;
        // hexapodRobot.m_stepHeight = hexapodRobot.robotCommands.stepHeight;
        // hexapodRobot.m_gait = hexapodRobot.robotCommands.gaitFlag;
        // hexapodRobot.m_PosX = hexapodRobot.robotCommands.posX;
        // hexapodRobot.m_PosY = hexapodRobot.robotCommands.posY;
        // hexapodRobot.m_bodyHeight = hexapodRobot.robotCommands.bodyHeight;
        // hexapodRobot.m_pitch = hexapodRobot.robotCommands.pitch;
        // hexapodRobot.m_roll = hexapodRobot.robotCommands.roll;
        // hexapodRobot.m_yaw = hexapodRobot.robotCommands.yaw;

        // //人机协同
        // hexapodRobot.m_stridX = hexapodRobot.robotCommands.strideX;
        // hexapodRobot.m_stridY = hexapodRobot.driverCommands.strideY;
        // hexapodRobot.m_Tcycle = hexapodRobot.driverCommands.gaitCycle;
        // hexapodRobot.m_stepHeight = hexapodRobot.robotCommands.stepHeight;
        // hexapodRobot.m_gait = hexapodRobot.driverCommands.gaitFlag;
        // hexapodRobot.m_PosX = hexapodRobot.driverCommands.posX;
        // hexapodRobot.m_PosY = hexapodRobot.driverCommands.posY;
        // hexapodRobot.m_bodyHeight = hexapodRobot.driverCommands.bodyHeight;
        // hexapodRobot.m_pitch = hexapodRobot.robotCommands.pitch;
        // hexapodRobot.m_roll = hexapodRobot.driverCommands.roll;
        // hexapodRobot.m_yaw = hexapodRobot.driverCommands.yaw;
        sleep(0);
    }
}