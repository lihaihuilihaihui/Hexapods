execute_process(COMMAND "/home/apolloli/Hexapods/build/jethexa_controller/jethexa_controller/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/apolloli/Hexapods/build/jethexa_controller/jethexa_controller/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
