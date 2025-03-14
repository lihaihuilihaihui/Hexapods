#include"motion_control/thread_pub_stability.h"
#include"motion_control/ros_tool.h"
#include"motion_control/gait.h"
#include"hexapod_msg/footPosition.h"
#include<queue>
#include<math.h>
using namespace std;
extern ROSTool * g_rosTool;
extern Gait hexapodRobot;

double getDistance(hexapod_msg::footPosition p1, hexapod_msg::footPosition p2)
{
    //double fenzi = abs(2*p1.x*p1.y - p1.x*p2.y - p2.x*p1.y);
    // double fenmu = sqrt((p1.x-p2.x)*(p1.x-p2.x) + (p1.y-p2.y)*(p1.y-p2.y));
    double fenzi = abs(p1.y*p2.x - p1.x*p2.y);
    double fenmu = sqrt(pow((p2.x-p1.x),2) + pow((p1.y-p2.y),2));
    return fenzi / fenmu;
}

void* thread_pub_stability(void * arg)
{
    queue<hexapod_msg::footPosition> legBraceVector;
    double d1,d2,d3,d4,d5,d6;
    hexapod_msg::footPosition bodyLF,bodyLM,bodyLH,bodyRF,bodyRM,bodyRH;

    while(1)
    {
   
        //ROS_INFO("pitch:%f\troll:%f",hexapodRobot.m_get_pitch, hexapodRobot.m_get_roll);
        bodyLF.x = (hexapodRobot.curLegLF_Position.x + BODY_LENGTH/2);
        bodyLF.y = (hexapodRobot.curLegLF_Position.y + BODY_WIDTH_SMALL/2);
        bodyLF.z = hexapodRobot.curLegLF_Position.z;
        bodyLM.x = hexapodRobot.curLegLM_Position.x;
        bodyLM.y = (hexapodRobot.curLegLM_Position.y + BODY_WIDTH_LARGE/2);
        bodyLM.z = hexapodRobot.curLegLM_Position.z;
        bodyLH.x = (hexapodRobot.curLegLH_Position.x - BODY_LENGTH/2);
        bodyLH.y = (hexapodRobot.curLegLH_Position.y + BODY_WIDTH_SMALL/2);
        bodyLH.z = hexapodRobot.curLegLH_Position.z;
        bodyRF.x = (hexapodRobot.curLegRF_Position.x + BODY_LENGTH/2);
        bodyRF.y = (hexapodRobot.curLegRF_Position.y - BODY_WIDTH_SMALL/2);
        bodyRF.z = hexapodRobot.curLegRF_Position.z;
        bodyRM.x = hexapodRobot.curLegRM_Position.x;
        bodyRM.y = (hexapodRobot.curLegRM_Position.y - BODY_WIDTH_LARGE/2);
        bodyRM.z = hexapodRobot.curLegRM_Position.z;
        bodyRH.x = (hexapodRobot.curLegRH_Position.x - BODY_LENGTH/2);
        bodyRH.y = (hexapodRobot.curLegRH_Position.y - BODY_WIDTH_SMALL/2);
        bodyRH.z = hexapodRobot.curLegRH_Position.z;

        bodyLF.x = cos(hexapodRobot.m_get_pitch/180*3.14)*bodyLF.x - sin(hexapodRobot.m_get_pitch/180*3.14)*bodyLF.z;
        bodyLF.z = sin(hexapodRobot.m_get_pitch/180*3.14)*bodyLF.x + cos(hexapodRobot.m_get_pitch/180*3.14)*bodyLF.z;
        bodyLM.x = cos(hexapodRobot.m_get_pitch/180*3.14)*bodyLM.x - sin(hexapodRobot.m_get_pitch/180*3.14)*bodyLM.z;
        bodyLM.z = sin(hexapodRobot.m_get_pitch/180*3.14)*bodyLM.x + cos(hexapodRobot.m_get_pitch/180*3.14)*bodyLM.z;
        bodyLH.x = cos(hexapodRobot.m_get_pitch/180*3.14)*bodyLH.x - sin(hexapodRobot.m_get_pitch/180*3.14)*bodyLH.z;
        bodyLH.z = sin(hexapodRobot.m_get_pitch/180*3.14)*bodyLH.x + cos(hexapodRobot.m_get_pitch/180*3.14)*bodyLH.z;
        bodyRF.x = cos(hexapodRobot.m_get_pitch/180*3.14)*bodyRF.x - sin(hexapodRobot.m_get_pitch/180*3.14)*bodyRF.z;
        bodyRF.z = sin(hexapodRobot.m_get_pitch/180*3.14)*bodyRF.x + cos(hexapodRobot.m_get_pitch/180*3.14)*bodyRF.z;
        bodyRM.x = cos(hexapodRobot.m_get_pitch/180*3.14)*bodyRM.x - sin(hexapodRobot.m_get_pitch/180*3.14)*bodyRM.z;
        bodyRM.z = sin(hexapodRobot.m_get_pitch/180*3.14)*bodyRM.x + cos(hexapodRobot.m_get_pitch/180*3.14)*bodyRM.z;
        bodyRH.x = cos(hexapodRobot.m_get_pitch/180*3.14)*bodyRH.x - sin(hexapodRobot.m_get_pitch/180*3.14)*bodyRH.z;
        bodyRH.z = sin(hexapodRobot.m_get_pitch/180*3.14)*bodyRH.x + cos(hexapodRobot.m_get_pitch/180*3.14)*bodyRH.z;


        // ROS_INFO("pitch:%f\troll:%f",hexapodRobot.m_get_pitch, hexapodRobot.m_get_roll);
        if(!hexapodRobot.isSwingLF)
            legBraceVector.push(bodyLF);
        if(!hexapodRobot.isSwingLM)
            legBraceVector.push(bodyLM);
        if(!hexapodRobot.isSwingLH)
            legBraceVector.push(bodyLH);
        if(!hexapodRobot.isSwingRH)
            legBraceVector.push(bodyRH);
        if(!hexapodRobot.isSwingRM)
            legBraceVector.push(bodyRM);
        if(!hexapodRobot.isSwingRF)
            legBraceVector.push(bodyRF);
        
        switch (legBraceVector.size())
        {
        case 6:
            {
                hexapod_msg::footPosition pos1 = legBraceVector.front();
                legBraceVector.pop();
                hexapod_msg::footPosition pos2 = legBraceVector.front();
                legBraceVector.pop();
                hexapod_msg::footPosition pos3 = legBraceVector.front();
                legBraceVector.pop();
                hexapod_msg::footPosition pos4 = legBraceVector.front();
                legBraceVector.pop();
                hexapod_msg::footPosition pos5 = legBraceVector.front();
                legBraceVector.pop();
                hexapod_msg::footPosition pos6 = legBraceVector.front();
                legBraceVector.pop();
                d1 = getDistance(pos1, pos2);
                d2 = getDistance(pos2, pos3);
                d3 = getDistance(pos3, pos4);
                d4 = getDistance(pos4, pos5);
                d5 = getDistance(pos5, pos6);
                d6 = getDistance(pos6, pos1);
                double a = (d1<=d2) ? d1 : d2;
                a = (a<=d3) ? a : d3;
                a = (a<=d4) ? a : d4;
                a = (a<=d5) ? a : d5;
                a = (a<=d6) ? a : d6;
                if(a==0)continue;
                hexapodRobot.m_get_stability = a;
       
            }
            break;
        case 5:
            {
                hexapod_msg::footPosition pos1 = legBraceVector.front();
                legBraceVector.pop();
                hexapod_msg::footPosition pos2 = legBraceVector.front();
                legBraceVector.pop();
                hexapod_msg::footPosition pos3 = legBraceVector.front();
                legBraceVector.pop();
                hexapod_msg::footPosition pos4 = legBraceVector.front();
                legBraceVector.pop();
                hexapod_msg::footPosition pos5 = legBraceVector.front();
                legBraceVector.pop();
                d1 = getDistance(pos1, pos2);
                d2 = getDistance(pos2, pos3);
                d3 = getDistance(pos3, pos4);
                d4 = getDistance(pos4, pos5);
                d5 = getDistance(pos5, pos1);
                double a = (d1<=d2) ? d1 : d2;
                a = (a<=d3) ? a : d3;
                a = (a<=d4) ? a : d4;
                a = (a<=d5) ? a : d5;
                if(a==0)continue;
                hexapodRobot.m_get_stability = a;
            }
            break;
        case 4:
            {
                hexapod_msg::footPosition pos1 = legBraceVector.front();
                legBraceVector.pop();
                hexapod_msg::footPosition pos2 = legBraceVector.front();
                legBraceVector.pop();
                hexapod_msg::footPosition pos3 = legBraceVector.front();
                legBraceVector.pop();
                hexapod_msg::footPosition pos4 = legBraceVector.front();
                legBraceVector.pop();
                d1 = getDistance(pos1, pos2);
                d2 = getDistance(pos2, pos3);
                d3 = getDistance(pos3, pos4);
                d4 = getDistance(pos4, pos1);
                double a = (d1<=d2) ? d1 : d2;
                a = (a<=d3) ? a : d3;
                a = (a<=d4) ? a : d4;
                if(a==0)continue;
                hexapodRobot.m_get_stability = a;
            }
            break;
        case 3:
            {
                hexapod_msg::footPosition pos1 = legBraceVector.front();
                legBraceVector.pop();
                hexapod_msg::footPosition pos2 = legBraceVector.front();
                legBraceVector.pop();
                hexapod_msg::footPosition pos3 = legBraceVector.front();
                legBraceVector.pop();
                d1 = getDistance(pos1, pos2);
                d2 = getDistance(pos2, pos3);
                d3 = getDistance(pos3, pos1);
                double a = d3<=(d1<=d2 ? d1 : d2) ? d3 : (d1<=d2 ? d1 : d2);
                if(a==0)continue;
                hexapodRobot.m_get_stability = a;
            }
            break;
        default:
            break;
        }
        while(legBraceVector.size())
        {
            legBraceVector.pop();
        }
        g_rosTool->RosPubStability(hexapodRobot.m_get_stability);
        g_rosTool->RosPubEnergy(hexapodRobot.m_get_energy);
        g_rosTool->RosPubColliction(hexapodRobot.m_get_collection);
    }

}