# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "jethexa_controller_interfaces: 11 messages, 7 services")

set(MSG_I_FLAGS "-Ijethexa_controller_interfaces:/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(jethexa_controller_interfaces_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Euler.msg" NAME_WE)
add_custom_target(_jethexa_controller_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jethexa_controller_interfaces" "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Euler.msg" ""
)

get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/FeetPositions.msg" NAME_WE)
add_custom_target(_jethexa_controller_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jethexa_controller_interfaces" "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/FeetPositions.msg" "jethexa_controller_interfaces/Pose:geometry_msgs/Point:jethexa_controller_interfaces/Euler"
)

get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegJoints.msg" NAME_WE)
add_custom_target(_jethexa_controller_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jethexa_controller_interfaces" "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegJoints.msg" ""
)

get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegsJoints.msg" NAME_WE)
add_custom_target(_jethexa_controller_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jethexa_controller_interfaces" "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegsJoints.msg" "jethexa_controller_interfaces/LegJoints"
)

get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegPosition.msg" NAME_WE)
add_custom_target(_jethexa_controller_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jethexa_controller_interfaces" "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegPosition.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Pose.msg" NAME_WE)
add_custom_target(_jethexa_controller_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jethexa_controller_interfaces" "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Pose.msg" "geometry_msgs/Point:jethexa_controller_interfaces/Euler"
)

get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/SetHead.msg" NAME_WE)
add_custom_target(_jethexa_controller_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jethexa_controller_interfaces" "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/SetHead.msg" "jethexa_controller_interfaces/Euler"
)

get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/State.msg" NAME_WE)
add_custom_target(_jethexa_controller_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jethexa_controller_interfaces" "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/State.msg" ""
)

get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/TransformEuler.msg" NAME_WE)
add_custom_target(_jethexa_controller_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jethexa_controller_interfaces" "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/TransformEuler.msg" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Traveling.msg" NAME_WE)
add_custom_target(_jethexa_controller_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jethexa_controller_interfaces" "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Traveling.msg" ""
)

get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/RunActionSet.msg" NAME_WE)
add_custom_target(_jethexa_controller_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jethexa_controller_interfaces" "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/RunActionSet.msg" ""
)

get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/PoseTransform.srv" NAME_WE)
add_custom_target(_jethexa_controller_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jethexa_controller_interfaces" "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/PoseTransform.srv" "geometry_msgs/Quaternion:geometry_msgs/Transform:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetPose1.srv" NAME_WE)
add_custom_target(_jethexa_controller_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jethexa_controller_interfaces" "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetPose1.srv" ""
)

get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetPose2.srv" NAME_WE)
add_custom_target(_jethexa_controller_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jethexa_controller_interfaces" "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetPose2.srv" "geometry_msgs/Point32"
)

get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SimpleMoving.srv" NAME_WE)
add_custom_target(_jethexa_controller_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jethexa_controller_interfaces" "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SimpleMoving.srv" ""
)

get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetInt64.srv" NAME_WE)
add_custom_target(_jethexa_controller_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jethexa_controller_interfaces" "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetInt64.srv" ""
)

get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetFloat64.srv" NAME_WE)
add_custom_target(_jethexa_controller_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jethexa_controller_interfaces" "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetFloat64.srv" ""
)

get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetFloat64List.srv" NAME_WE)
add_custom_target(_jethexa_controller_interfaces_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "jethexa_controller_interfaces" "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetFloat64List.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Euler.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_cpp(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/FeetPositions.msg"
  "${MSG_I_FLAGS}"
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Euler.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_cpp(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegJoints.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_cpp(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegsJoints.msg"
  "${MSG_I_FLAGS}"
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegJoints.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_cpp(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegPosition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_cpp(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Euler.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_cpp(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/SetHead.msg"
  "${MSG_I_FLAGS}"
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Euler.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_cpp(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_cpp(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/TransformEuler.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_cpp(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Traveling.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_cpp(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/RunActionSet.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jethexa_controller_interfaces
)

### Generating Services
_generate_srv_cpp(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/PoseTransform.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_srv_cpp(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetPose1.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_srv_cpp(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetPose2.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_srv_cpp(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SimpleMoving.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_srv_cpp(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetInt64.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_srv_cpp(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetFloat64.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_srv_cpp(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetFloat64List.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jethexa_controller_interfaces
)

### Generating Module File
_generate_module_cpp(jethexa_controller_interfaces
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jethexa_controller_interfaces
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(jethexa_controller_interfaces_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(jethexa_controller_interfaces_generate_messages jethexa_controller_interfaces_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Euler.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_cpp _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/FeetPositions.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_cpp _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegJoints.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_cpp _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegsJoints.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_cpp _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegPosition.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_cpp _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Pose.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_cpp _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/SetHead.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_cpp _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/State.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_cpp _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/TransformEuler.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_cpp _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Traveling.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_cpp _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/RunActionSet.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_cpp _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/PoseTransform.srv" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_cpp _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetPose1.srv" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_cpp _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetPose2.srv" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_cpp _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SimpleMoving.srv" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_cpp _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetInt64.srv" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_cpp _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetFloat64.srv" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_cpp _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetFloat64List.srv" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_cpp _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jethexa_controller_interfaces_gencpp)
add_dependencies(jethexa_controller_interfaces_gencpp jethexa_controller_interfaces_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jethexa_controller_interfaces_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Euler.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_eus(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/FeetPositions.msg"
  "${MSG_I_FLAGS}"
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Euler.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_eus(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegJoints.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_eus(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegsJoints.msg"
  "${MSG_I_FLAGS}"
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegJoints.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_eus(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegPosition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_eus(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Euler.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_eus(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/SetHead.msg"
  "${MSG_I_FLAGS}"
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Euler.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_eus(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_eus(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/TransformEuler.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_eus(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Traveling.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_eus(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/RunActionSet.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jethexa_controller_interfaces
)

### Generating Services
_generate_srv_eus(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/PoseTransform.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_srv_eus(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetPose1.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_srv_eus(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetPose2.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_srv_eus(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SimpleMoving.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_srv_eus(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetInt64.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_srv_eus(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetFloat64.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_srv_eus(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetFloat64List.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jethexa_controller_interfaces
)

### Generating Module File
_generate_module_eus(jethexa_controller_interfaces
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jethexa_controller_interfaces
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(jethexa_controller_interfaces_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(jethexa_controller_interfaces_generate_messages jethexa_controller_interfaces_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Euler.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_eus _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/FeetPositions.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_eus _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegJoints.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_eus _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegsJoints.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_eus _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegPosition.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_eus _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Pose.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_eus _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/SetHead.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_eus _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/State.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_eus _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/TransformEuler.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_eus _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Traveling.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_eus _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/RunActionSet.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_eus _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/PoseTransform.srv" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_eus _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetPose1.srv" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_eus _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetPose2.srv" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_eus _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SimpleMoving.srv" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_eus _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetInt64.srv" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_eus _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetFloat64.srv" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_eus _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetFloat64List.srv" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_eus _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jethexa_controller_interfaces_geneus)
add_dependencies(jethexa_controller_interfaces_geneus jethexa_controller_interfaces_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jethexa_controller_interfaces_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Euler.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_lisp(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/FeetPositions.msg"
  "${MSG_I_FLAGS}"
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Euler.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_lisp(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegJoints.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_lisp(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegsJoints.msg"
  "${MSG_I_FLAGS}"
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegJoints.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_lisp(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegPosition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_lisp(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Euler.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_lisp(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/SetHead.msg"
  "${MSG_I_FLAGS}"
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Euler.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_lisp(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_lisp(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/TransformEuler.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_lisp(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Traveling.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_lisp(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/RunActionSet.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jethexa_controller_interfaces
)

### Generating Services
_generate_srv_lisp(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/PoseTransform.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_srv_lisp(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetPose1.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_srv_lisp(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetPose2.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_srv_lisp(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SimpleMoving.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_srv_lisp(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetInt64.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_srv_lisp(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetFloat64.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_srv_lisp(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetFloat64List.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jethexa_controller_interfaces
)

### Generating Module File
_generate_module_lisp(jethexa_controller_interfaces
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jethexa_controller_interfaces
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(jethexa_controller_interfaces_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(jethexa_controller_interfaces_generate_messages jethexa_controller_interfaces_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Euler.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_lisp _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/FeetPositions.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_lisp _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegJoints.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_lisp _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegsJoints.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_lisp _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegPosition.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_lisp _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Pose.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_lisp _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/SetHead.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_lisp _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/State.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_lisp _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/TransformEuler.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_lisp _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Traveling.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_lisp _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/RunActionSet.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_lisp _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/PoseTransform.srv" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_lisp _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetPose1.srv" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_lisp _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetPose2.srv" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_lisp _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SimpleMoving.srv" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_lisp _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetInt64.srv" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_lisp _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetFloat64.srv" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_lisp _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetFloat64List.srv" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_lisp _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jethexa_controller_interfaces_genlisp)
add_dependencies(jethexa_controller_interfaces_genlisp jethexa_controller_interfaces_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jethexa_controller_interfaces_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Euler.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_nodejs(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/FeetPositions.msg"
  "${MSG_I_FLAGS}"
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Euler.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_nodejs(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegJoints.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_nodejs(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegsJoints.msg"
  "${MSG_I_FLAGS}"
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegJoints.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_nodejs(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegPosition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_nodejs(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Euler.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_nodejs(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/SetHead.msg"
  "${MSG_I_FLAGS}"
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Euler.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_nodejs(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_nodejs(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/TransformEuler.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_nodejs(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Traveling.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_nodejs(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/RunActionSet.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jethexa_controller_interfaces
)

### Generating Services
_generate_srv_nodejs(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/PoseTransform.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_srv_nodejs(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetPose1.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_srv_nodejs(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetPose2.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_srv_nodejs(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SimpleMoving.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_srv_nodejs(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetInt64.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_srv_nodejs(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetFloat64.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_srv_nodejs(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetFloat64List.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jethexa_controller_interfaces
)

### Generating Module File
_generate_module_nodejs(jethexa_controller_interfaces
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jethexa_controller_interfaces
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(jethexa_controller_interfaces_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(jethexa_controller_interfaces_generate_messages jethexa_controller_interfaces_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Euler.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_nodejs _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/FeetPositions.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_nodejs _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegJoints.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_nodejs _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegsJoints.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_nodejs _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegPosition.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_nodejs _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Pose.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_nodejs _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/SetHead.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_nodejs _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/State.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_nodejs _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/TransformEuler.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_nodejs _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Traveling.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_nodejs _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/RunActionSet.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_nodejs _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/PoseTransform.srv" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_nodejs _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetPose1.srv" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_nodejs _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetPose2.srv" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_nodejs _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SimpleMoving.srv" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_nodejs _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetInt64.srv" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_nodejs _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetFloat64.srv" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_nodejs _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetFloat64List.srv" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_nodejs _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jethexa_controller_interfaces_gennodejs)
add_dependencies(jethexa_controller_interfaces_gennodejs jethexa_controller_interfaces_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jethexa_controller_interfaces_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Euler.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_py(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/FeetPositions.msg"
  "${MSG_I_FLAGS}"
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Euler.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_py(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegJoints.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_py(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegsJoints.msg"
  "${MSG_I_FLAGS}"
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegJoints.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_py(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegPosition.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_py(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Euler.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_py(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/SetHead.msg"
  "${MSG_I_FLAGS}"
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Euler.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_py(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_py(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/TransformEuler.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_py(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Traveling.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_msg_py(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/RunActionSet.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jethexa_controller_interfaces
)

### Generating Services
_generate_srv_py(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/PoseTransform.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_srv_py(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetPose1.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_srv_py(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetPose2.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_srv_py(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SimpleMoving.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_srv_py(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetInt64.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_srv_py(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetFloat64.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jethexa_controller_interfaces
)
_generate_srv_py(jethexa_controller_interfaces
  "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetFloat64List.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jethexa_controller_interfaces
)

### Generating Module File
_generate_module_py(jethexa_controller_interfaces
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jethexa_controller_interfaces
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(jethexa_controller_interfaces_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(jethexa_controller_interfaces_generate_messages jethexa_controller_interfaces_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Euler.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_py _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/FeetPositions.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_py _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegJoints.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_py _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegsJoints.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_py _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegPosition.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_py _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Pose.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_py _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/SetHead.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_py _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/State.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_py _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/TransformEuler.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_py _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Traveling.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_py _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/RunActionSet.msg" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_py _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/PoseTransform.srv" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_py _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetPose1.srv" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_py _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetPose2.srv" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_py _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SimpleMoving.srv" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_py _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetInt64.srv" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_py _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetFloat64.srv" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_py _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetFloat64List.srv" NAME_WE)
add_dependencies(jethexa_controller_interfaces_generate_messages_py _jethexa_controller_interfaces_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(jethexa_controller_interfaces_genpy)
add_dependencies(jethexa_controller_interfaces_genpy jethexa_controller_interfaces_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS jethexa_controller_interfaces_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jethexa_controller_interfaces)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/jethexa_controller_interfaces
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(jethexa_controller_interfaces_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(jethexa_controller_interfaces_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jethexa_controller_interfaces)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/jethexa_controller_interfaces
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(jethexa_controller_interfaces_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(jethexa_controller_interfaces_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jethexa_controller_interfaces)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/jethexa_controller_interfaces
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(jethexa_controller_interfaces_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(jethexa_controller_interfaces_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jethexa_controller_interfaces)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/jethexa_controller_interfaces
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(jethexa_controller_interfaces_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(jethexa_controller_interfaces_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jethexa_controller_interfaces)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jethexa_controller_interfaces\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/jethexa_controller_interfaces
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(jethexa_controller_interfaces_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(jethexa_controller_interfaces_generate_messages_py std_msgs_generate_messages_py)
endif()
