cmake_minimum_required(VERSION 3.0.2)
project(motion_control)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  tf2
  tf2_geometry_msgs
  tf2_ros
  hexapod_msg
  grid_map_core
  grid_map_cv
  grid_map_filters
  grid_map_loader
  grid_map_msgs
  grid_map_octomap
  grid_map_ros
  grid_map_rviz_plugin
  grid_map_sdf
  grid_map_visualization
)


catkin_package(
 INCLUDE_DIRS include
 LIBRARIES motion_control
 CATKIN_DEPENDS roscpp rospy std_msgs hexapod_msg
#  DEPENDS system_lib
)

include_directories(
include
  ${catkin_INCLUDE_DIRS}
)


## Declare a C++ library
add_library(ikine
  include/motion_control/ikine.h
  src/ikine.cpp
)
add_dependencies(ikine ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(ikine
  ${catkin_LIBRARIES}
)

add_library(ros_tool
  include/motion_control/ros_tool.h
  src/ros_tool.cpp
)
add_dependencies(ros_tool ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(ros_tool
  ${catkin_LIBRARIES}
)

add_library(trajectory
  include/motion_control/trajectory.h
  src/trajectory.cpp
)
add_dependencies(trajectory ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(trajectory
  ${catkin_LIBRARIES}
)

add_library(gait
  include/motion_control/gait.h
  src/gait.cpp
)
add_dependencies(gait ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(gait
  ${catkin_LIBRARIES}
)

add_library(thread_job_working
  include/motion_control/thread_job_working.h
  src/thread_job_working.cpp
)
add_dependencies(thread_job_working ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(thread_job_working
  ${catkin_LIBRARIES}
)

add_library(thread_pub_odom
  include/motion_control/thread_pub_odom.h
  src/thread_pub_odom.cpp
)
add_dependencies(thread_pub_odom ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(thread_pub_odom
  ${catkin_LIBRARIES}
)

add_library(thread_baseToOdom
  include/motion_control/thread_baseToOdom.h
  src/thread_baseToOdom.cpp
)
add_dependencies(thread_baseToOdom ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(thread_baseToOdom
  ${catkin_LIBRARIES}
)

add_library(thread_pub_stability
  include/motion_control/thread_pub_stability.h
  src/thread_pub_stability.cpp
)
add_dependencies(thread_pub_stability ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(thread_pub_stability
  ${catkin_LIBRARIES}
)

add_library(thread_humanAndRobotDecision
  include/motion_control/thread_humanAndRobotDecision.h
  src/thread_humanAndRobotDecision.cpp
)
add_dependencies(thread_humanAndRobotDecision ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(thread_humanAndRobotDecision
  ${catkin_LIBRARIES}
)

add_library(thread_gridMapPub
  include/motion_control/thread_gridMapPub.h
  src/thread_gridMapPub.cpp
)
add_dependencies(thread_gridMapPub ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(thread_gridMapPub
  ${catkin_LIBRARIES}
)

add_library(gridMapInfo
  include/motion_control/gridMapInfo.h
  src/gridMapInfo.cpp
)
add_dependencies(gridMapInfo ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(gridMapInfo
  ${catkin_LIBRARIES}
)

add_library(thread_recvCockpit
  include/motion_control/thread_recvCockpit.h
  src/thread_recvCockpit.cpp
)
add_dependencies(thread_recvCockpit ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(thread_recvCockpit
  ${catkin_LIBRARIES}
)

add_library(thread_sendBase
  include/motion_control/thread_sendBase.h
  src/thread_sendBase.cpp
)
add_dependencies(thread_sendBase ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(thread_sendBase
  ${catkin_LIBRARIES}
)

add_library(thread_robot_decision
  include/motion_control/thread_robot_decision.h
  src/thread_robot_decision.cpp
)
add_dependencies(thread_robot_decision ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(thread_robot_decision
  ${catkin_LIBRARIES}
)

add_library(thread_sZxyTcp
  include/motion_control/thread_sZxyTcp.h
  src/thread_sZxyTcp.cpp
)
add_dependencies(thread_sZxyTcp ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(thread_sZxyTcp
  ${catkin_LIBRARIES}
)

add_library(thread_IMUsub
  include/motion_control/thread_IMUsub.h
  src/thread_IMUsub.cpp
)
add_dependencies(thread_IMUsub ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(thread_IMUsub
  ${catkin_LIBRARIES}
)
##生成可执行文件
add_executable(main src/main.cpp)
add_dependencies(main ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(main gait trajectory ros_tool ikine thread_job_working thread_pub_odom 
                      thread_baseToOdom thread_pub_stability thread_humanAndRobotDecision 
                      thread_gridMapPub gridMapInfo thread_recvCockpit thread_sendBase thread_robot_decision
                      thread_sZxyTcp thread_IMUsub
  ${catkin_LIBRARIES}
)

add_executable(test01 src/test01.cpp)
# add_dependencies(test ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(test01 ${catkin_LIBRARIES}
)
add_executable(test2 src/test2.cpp)
# add_dependencies(test ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(test2 ${catkin_LIBRARIES}
)