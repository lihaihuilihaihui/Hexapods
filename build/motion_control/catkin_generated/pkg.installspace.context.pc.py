# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;rospy;std_msgs;hexapod_msg".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lmotion_control".split(';') if "-lmotion_control" != "" else []
PROJECT_NAME = "motion_control"
PROJECT_SPACE_DIR = "/home/apolloli/Hexapods/install"
PROJECT_VERSION = "0.0.0"
