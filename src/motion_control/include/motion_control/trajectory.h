#pragma once

#include"motion_control/ikine.h"
#include"hexapod_msg/footPosition.h"
#include"hexapod_msg/legAngle.h"


hexapod_msg::legAngle getTrajectory(hexapod_msg::footPosition & start, hexapod_msg::footPosition & end, double height, double t, double Ts, double T, hexapod_msg::footPosition & currentPosition, enum LEGNUM, bool &isSwing);



