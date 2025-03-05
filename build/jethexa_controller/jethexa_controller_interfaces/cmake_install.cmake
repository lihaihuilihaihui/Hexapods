# Install script for directory: /home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/apolloli/Hexapods/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jethexa_controller_interfaces/msg" TYPE FILE FILES
    "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Euler.msg"
    "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/FeetPositions.msg"
    "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegJoints.msg"
    "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegsJoints.msg"
    "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/LegPosition.msg"
    "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Pose.msg"
    "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/SetHead.msg"
    "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/State.msg"
    "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/TransformEuler.msg"
    "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/Traveling.msg"
    "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/msg/RunActionSet.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jethexa_controller_interfaces/srv" TYPE FILE FILES
    "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/PoseTransform.srv"
    "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetPose1.srv"
    "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetPose2.srv"
    "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SimpleMoving.srv"
    "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetInt64.srv"
    "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetFloat64.srv"
    "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/srv/SetFloat64List.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jethexa_controller_interfaces/cmake" TYPE FILE FILES "/home/apolloli/Hexapods/build/jethexa_controller/jethexa_controller_interfaces/catkin_generated/installspace/jethexa_controller_interfaces-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/apolloli/Hexapods/devel/include/jethexa_controller_interfaces")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/apolloli/Hexapods/devel/share/roseus/ros/jethexa_controller_interfaces")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/apolloli/Hexapods/devel/share/common-lisp/ros/jethexa_controller_interfaces")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/apolloli/Hexapods/devel/share/gennodejs/ros/jethexa_controller_interfaces")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/apolloli/Hexapods/devel/lib/python3/dist-packages/jethexa_controller_interfaces")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/apolloli/Hexapods/devel/lib/python3/dist-packages/jethexa_controller_interfaces")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/apolloli/Hexapods/build/jethexa_controller/jethexa_controller_interfaces/catkin_generated/installspace/jethexa_controller_interfaces.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jethexa_controller_interfaces/cmake" TYPE FILE FILES "/home/apolloli/Hexapods/build/jethexa_controller/jethexa_controller_interfaces/catkin_generated/installspace/jethexa_controller_interfaces-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jethexa_controller_interfaces/cmake" TYPE FILE FILES
    "/home/apolloli/Hexapods/build/jethexa_controller/jethexa_controller_interfaces/catkin_generated/installspace/jethexa_controller_interfacesConfig.cmake"
    "/home/apolloli/Hexapods/build/jethexa_controller/jethexa_controller_interfaces/catkin_generated/installspace/jethexa_controller_interfacesConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jethexa_controller_interfaces" TYPE FILE FILES "/home/apolloli/Hexapods/src/jethexa_controller/jethexa_controller_interfaces/package.xml")
endif()

