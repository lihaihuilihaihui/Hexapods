#pragma once
#include"hexapod_msg/footPosition.h"
#include"hexapod_msg/legAngle.h"
#include"motion_control/config.h"
/*逆运动学*/

void ikine(hexapod_msg::footPosition position, hexapod_msg::legAngle & angle,enum LEGNUM num);
