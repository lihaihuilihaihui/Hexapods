#include"motion_control/thread_gridMapPub.h"
#include"motion_control/gridMapInfo.h"
#include"motion_control/gait.h"
extern GridMapInfo myGridMap;
extern Gait hexapodRobot;

void * thread_gridMapPub(void * arg)
{
    srand(time(0));
    while(ros::ok())
    {
        // myGridMap.SetGridMapData("strideX",hexapodRobot.m_get_posX, hexapodRobot.m_get_posY, hexapodRobot.m_stridX);
        // myGridMap.SetGridMapData("stepHeight",hexapodRobot.m_get_posX, hexapodRobot.m_get_posY, hexapodRobot.m_stepHeight);
        // for(double i=0; i<25; i+=0.1)
        // {
        //     for(double j=0; j<25; j+=0.1)
        //     {
        //         for(double row=0; row<5; row++)
        //         {
        //             for(double col=0; col<5; col++)
        //             {
        //                 if(i>=row*5&&i<=(row+1)*5 && j>=col*5&&j<=(col+1)*5)
        //                 {
        //                     double strideX = row + (rand()%100/100.0-0.5);
        //                     double stepHeight = col + (rand()%100/100.0-0.5);
        //                     myGridMap.SetGridMapData("strideX",i,j,strideX, false);
        //                     myGridMap.SetGridMapData("stepHeight",i,j,stepHeight, false);
        //                     myGridMap.RosPubGridMsg();
        //                 }
        //             }
        //         }
        //     }
        // }
        myGridMap.RosPubGridMsg();
    }
        
    return 0;
}