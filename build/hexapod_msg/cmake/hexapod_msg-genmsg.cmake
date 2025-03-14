# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hexapod_msg: 6 messages, 0 services")

set(MSG_I_FLAGS "-Ihexapod_msg:/home/apolloli/Hexapods/src/hexapod_msg/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hexapod_msg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/apolloli/Hexapods/src/hexapod_msg/msg/footPosition.msg" NAME_WE)
add_custom_target(_hexapod_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hexapod_msg" "/home/apolloli/Hexapods/src/hexapod_msg/msg/footPosition.msg" ""
)

get_filename_component(_filename "/home/apolloli/Hexapods/src/hexapod_msg/msg/legAngle.msg" NAME_WE)
add_custom_target(_hexapod_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hexapod_msg" "/home/apolloli/Hexapods/src/hexapod_msg/msg/legAngle.msg" ""
)

get_filename_component(_filename "/home/apolloli/Hexapods/src/hexapod_msg/msg/commands.msg" NAME_WE)
add_custom_target(_hexapod_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hexapod_msg" "/home/apolloli/Hexapods/src/hexapod_msg/msg/commands.msg" ""
)

get_filename_component(_filename "/home/apolloli/Hexapods/src/hexapod_msg/msg/allLegPosition.msg" NAME_WE)
add_custom_target(_hexapod_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hexapod_msg" "/home/apolloli/Hexapods/src/hexapod_msg/msg/allLegPosition.msg" "hexapod_msg/footPosition"
)

get_filename_component(_filename "/home/apolloli/Hexapods/src/hexapod_msg/msg/bodyPos.msg" NAME_WE)
add_custom_target(_hexapod_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hexapod_msg" "/home/apolloli/Hexapods/src/hexapod_msg/msg/bodyPos.msg" ""
)

get_filename_component(_filename "/home/apolloli/Hexapods/src/hexapod_msg/msg/bodyTwist.msg" NAME_WE)
add_custom_target(_hexapod_msg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hexapod_msg" "/home/apolloli/Hexapods/src/hexapod_msg/msg/bodyTwist.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(hexapod_msg
  "/home/apolloli/Hexapods/src/hexapod_msg/msg/footPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hexapod_msg
)
_generate_msg_cpp(hexapod_msg
  "/home/apolloli/Hexapods/src/hexapod_msg/msg/legAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hexapod_msg
)
_generate_msg_cpp(hexapod_msg
  "/home/apolloli/Hexapods/src/hexapod_msg/msg/commands.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hexapod_msg
)
_generate_msg_cpp(hexapod_msg
  "/home/apolloli/Hexapods/src/hexapod_msg/msg/allLegPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/apolloli/Hexapods/src/hexapod_msg/msg/footPosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hexapod_msg
)
_generate_msg_cpp(hexapod_msg
  "/home/apolloli/Hexapods/src/hexapod_msg/msg/bodyPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hexapod_msg
)
_generate_msg_cpp(hexapod_msg
  "/home/apolloli/Hexapods/src/hexapod_msg/msg/bodyTwist.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hexapod_msg
)

### Generating Services

### Generating Module File
_generate_module_cpp(hexapod_msg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hexapod_msg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hexapod_msg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hexapod_msg_generate_messages hexapod_msg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/apolloli/Hexapods/src/hexapod_msg/msg/footPosition.msg" NAME_WE)
add_dependencies(hexapod_msg_generate_messages_cpp _hexapod_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/hexapod_msg/msg/legAngle.msg" NAME_WE)
add_dependencies(hexapod_msg_generate_messages_cpp _hexapod_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/hexapod_msg/msg/commands.msg" NAME_WE)
add_dependencies(hexapod_msg_generate_messages_cpp _hexapod_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/hexapod_msg/msg/allLegPosition.msg" NAME_WE)
add_dependencies(hexapod_msg_generate_messages_cpp _hexapod_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/hexapod_msg/msg/bodyPos.msg" NAME_WE)
add_dependencies(hexapod_msg_generate_messages_cpp _hexapod_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/hexapod_msg/msg/bodyTwist.msg" NAME_WE)
add_dependencies(hexapod_msg_generate_messages_cpp _hexapod_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hexapod_msg_gencpp)
add_dependencies(hexapod_msg_gencpp hexapod_msg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hexapod_msg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(hexapod_msg
  "/home/apolloli/Hexapods/src/hexapod_msg/msg/footPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hexapod_msg
)
_generate_msg_eus(hexapod_msg
  "/home/apolloli/Hexapods/src/hexapod_msg/msg/legAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hexapod_msg
)
_generate_msg_eus(hexapod_msg
  "/home/apolloli/Hexapods/src/hexapod_msg/msg/commands.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hexapod_msg
)
_generate_msg_eus(hexapod_msg
  "/home/apolloli/Hexapods/src/hexapod_msg/msg/allLegPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/apolloli/Hexapods/src/hexapod_msg/msg/footPosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hexapod_msg
)
_generate_msg_eus(hexapod_msg
  "/home/apolloli/Hexapods/src/hexapod_msg/msg/bodyPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hexapod_msg
)
_generate_msg_eus(hexapod_msg
  "/home/apolloli/Hexapods/src/hexapod_msg/msg/bodyTwist.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hexapod_msg
)

### Generating Services

### Generating Module File
_generate_module_eus(hexapod_msg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hexapod_msg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(hexapod_msg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(hexapod_msg_generate_messages hexapod_msg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/apolloli/Hexapods/src/hexapod_msg/msg/footPosition.msg" NAME_WE)
add_dependencies(hexapod_msg_generate_messages_eus _hexapod_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/hexapod_msg/msg/legAngle.msg" NAME_WE)
add_dependencies(hexapod_msg_generate_messages_eus _hexapod_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/hexapod_msg/msg/commands.msg" NAME_WE)
add_dependencies(hexapod_msg_generate_messages_eus _hexapod_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/hexapod_msg/msg/allLegPosition.msg" NAME_WE)
add_dependencies(hexapod_msg_generate_messages_eus _hexapod_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/hexapod_msg/msg/bodyPos.msg" NAME_WE)
add_dependencies(hexapod_msg_generate_messages_eus _hexapod_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/hexapod_msg/msg/bodyTwist.msg" NAME_WE)
add_dependencies(hexapod_msg_generate_messages_eus _hexapod_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hexapod_msg_geneus)
add_dependencies(hexapod_msg_geneus hexapod_msg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hexapod_msg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(hexapod_msg
  "/home/apolloli/Hexapods/src/hexapod_msg/msg/footPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hexapod_msg
)
_generate_msg_lisp(hexapod_msg
  "/home/apolloli/Hexapods/src/hexapod_msg/msg/legAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hexapod_msg
)
_generate_msg_lisp(hexapod_msg
  "/home/apolloli/Hexapods/src/hexapod_msg/msg/commands.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hexapod_msg
)
_generate_msg_lisp(hexapod_msg
  "/home/apolloli/Hexapods/src/hexapod_msg/msg/allLegPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/apolloli/Hexapods/src/hexapod_msg/msg/footPosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hexapod_msg
)
_generate_msg_lisp(hexapod_msg
  "/home/apolloli/Hexapods/src/hexapod_msg/msg/bodyPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hexapod_msg
)
_generate_msg_lisp(hexapod_msg
  "/home/apolloli/Hexapods/src/hexapod_msg/msg/bodyTwist.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hexapod_msg
)

### Generating Services

### Generating Module File
_generate_module_lisp(hexapod_msg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hexapod_msg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hexapod_msg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hexapod_msg_generate_messages hexapod_msg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/apolloli/Hexapods/src/hexapod_msg/msg/footPosition.msg" NAME_WE)
add_dependencies(hexapod_msg_generate_messages_lisp _hexapod_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/hexapod_msg/msg/legAngle.msg" NAME_WE)
add_dependencies(hexapod_msg_generate_messages_lisp _hexapod_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/hexapod_msg/msg/commands.msg" NAME_WE)
add_dependencies(hexapod_msg_generate_messages_lisp _hexapod_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/hexapod_msg/msg/allLegPosition.msg" NAME_WE)
add_dependencies(hexapod_msg_generate_messages_lisp _hexapod_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/hexapod_msg/msg/bodyPos.msg" NAME_WE)
add_dependencies(hexapod_msg_generate_messages_lisp _hexapod_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/hexapod_msg/msg/bodyTwist.msg" NAME_WE)
add_dependencies(hexapod_msg_generate_messages_lisp _hexapod_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hexapod_msg_genlisp)
add_dependencies(hexapod_msg_genlisp hexapod_msg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hexapod_msg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(hexapod_msg
  "/home/apolloli/Hexapods/src/hexapod_msg/msg/footPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hexapod_msg
)
_generate_msg_nodejs(hexapod_msg
  "/home/apolloli/Hexapods/src/hexapod_msg/msg/legAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hexapod_msg
)
_generate_msg_nodejs(hexapod_msg
  "/home/apolloli/Hexapods/src/hexapod_msg/msg/commands.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hexapod_msg
)
_generate_msg_nodejs(hexapod_msg
  "/home/apolloli/Hexapods/src/hexapod_msg/msg/allLegPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/apolloli/Hexapods/src/hexapod_msg/msg/footPosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hexapod_msg
)
_generate_msg_nodejs(hexapod_msg
  "/home/apolloli/Hexapods/src/hexapod_msg/msg/bodyPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hexapod_msg
)
_generate_msg_nodejs(hexapod_msg
  "/home/apolloli/Hexapods/src/hexapod_msg/msg/bodyTwist.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hexapod_msg
)

### Generating Services

### Generating Module File
_generate_module_nodejs(hexapod_msg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hexapod_msg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(hexapod_msg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(hexapod_msg_generate_messages hexapod_msg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/apolloli/Hexapods/src/hexapod_msg/msg/footPosition.msg" NAME_WE)
add_dependencies(hexapod_msg_generate_messages_nodejs _hexapod_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/hexapod_msg/msg/legAngle.msg" NAME_WE)
add_dependencies(hexapod_msg_generate_messages_nodejs _hexapod_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/hexapod_msg/msg/commands.msg" NAME_WE)
add_dependencies(hexapod_msg_generate_messages_nodejs _hexapod_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/hexapod_msg/msg/allLegPosition.msg" NAME_WE)
add_dependencies(hexapod_msg_generate_messages_nodejs _hexapod_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/hexapod_msg/msg/bodyPos.msg" NAME_WE)
add_dependencies(hexapod_msg_generate_messages_nodejs _hexapod_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/hexapod_msg/msg/bodyTwist.msg" NAME_WE)
add_dependencies(hexapod_msg_generate_messages_nodejs _hexapod_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hexapod_msg_gennodejs)
add_dependencies(hexapod_msg_gennodejs hexapod_msg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hexapod_msg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(hexapod_msg
  "/home/apolloli/Hexapods/src/hexapod_msg/msg/footPosition.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hexapod_msg
)
_generate_msg_py(hexapod_msg
  "/home/apolloli/Hexapods/src/hexapod_msg/msg/legAngle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hexapod_msg
)
_generate_msg_py(hexapod_msg
  "/home/apolloli/Hexapods/src/hexapod_msg/msg/commands.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hexapod_msg
)
_generate_msg_py(hexapod_msg
  "/home/apolloli/Hexapods/src/hexapod_msg/msg/allLegPosition.msg"
  "${MSG_I_FLAGS}"
  "/home/apolloli/Hexapods/src/hexapod_msg/msg/footPosition.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hexapod_msg
)
_generate_msg_py(hexapod_msg
  "/home/apolloli/Hexapods/src/hexapod_msg/msg/bodyPos.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hexapod_msg
)
_generate_msg_py(hexapod_msg
  "/home/apolloli/Hexapods/src/hexapod_msg/msg/bodyTwist.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hexapod_msg
)

### Generating Services

### Generating Module File
_generate_module_py(hexapod_msg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hexapod_msg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hexapod_msg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hexapod_msg_generate_messages hexapod_msg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/apolloli/Hexapods/src/hexapod_msg/msg/footPosition.msg" NAME_WE)
add_dependencies(hexapod_msg_generate_messages_py _hexapod_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/hexapod_msg/msg/legAngle.msg" NAME_WE)
add_dependencies(hexapod_msg_generate_messages_py _hexapod_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/hexapod_msg/msg/commands.msg" NAME_WE)
add_dependencies(hexapod_msg_generate_messages_py _hexapod_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/hexapod_msg/msg/allLegPosition.msg" NAME_WE)
add_dependencies(hexapod_msg_generate_messages_py _hexapod_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/hexapod_msg/msg/bodyPos.msg" NAME_WE)
add_dependencies(hexapod_msg_generate_messages_py _hexapod_msg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/apolloli/Hexapods/src/hexapod_msg/msg/bodyTwist.msg" NAME_WE)
add_dependencies(hexapod_msg_generate_messages_py _hexapod_msg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hexapod_msg_genpy)
add_dependencies(hexapod_msg_genpy hexapod_msg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hexapod_msg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hexapod_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hexapod_msg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(hexapod_msg_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hexapod_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hexapod_msg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(hexapod_msg_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hexapod_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hexapod_msg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(hexapod_msg_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hexapod_msg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hexapod_msg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(hexapod_msg_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hexapod_msg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hexapod_msg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hexapod_msg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(hexapod_msg_generate_messages_py std_msgs_generate_messages_py)
endif()
