;; Auto-generated. Do not edit!


(when (boundp 'hexapod_msg::commands)
  (if (not (find-package "HEXAPOD_MSG"))
    (make-package "HEXAPOD_MSG"))
  (shadow 'commands (find-package "HEXAPOD_MSG")))
(unless (find-package "HEXAPOD_MSG::COMMANDS")
  (make-package "HEXAPOD_MSG::COMMANDS"))

(in-package "ROS")
;;//! \htmlinclude commands.msg.html


(defclass hexapod_msg::commands
  :super ros::object
  :slots (_gaitFlag _gaitCycle _strideX _strideY _posX _posY _yaw _pitch _roll _bodyHeight _stepHeight ))

(defmethod hexapod_msg::commands
  (:init
   (&key
    ((:gaitFlag __gaitFlag) 0.0)
    ((:gaitCycle __gaitCycle) 0.0)
    ((:strideX __strideX) 0.0)
    ((:strideY __strideY) 0.0)
    ((:posX __posX) 0.0)
    ((:posY __posY) 0.0)
    ((:yaw __yaw) 0.0)
    ((:pitch __pitch) 0.0)
    ((:roll __roll) 0.0)
    ((:bodyHeight __bodyHeight) 0.0)
    ((:stepHeight __stepHeight) 0.0)
    )
   (send-super :init)
   (setq _gaitFlag (float __gaitFlag))
   (setq _gaitCycle (float __gaitCycle))
   (setq _strideX (float __strideX))
   (setq _strideY (float __strideY))
   (setq _posX (float __posX))
   (setq _posY (float __posY))
   (setq _yaw (float __yaw))
   (setq _pitch (float __pitch))
   (setq _roll (float __roll))
   (setq _bodyHeight (float __bodyHeight))
   (setq _stepHeight (float __stepHeight))
   self)
  (:gaitFlag
   (&optional __gaitFlag)
   (if __gaitFlag (setq _gaitFlag __gaitFlag)) _gaitFlag)
  (:gaitCycle
   (&optional __gaitCycle)
   (if __gaitCycle (setq _gaitCycle __gaitCycle)) _gaitCycle)
  (:strideX
   (&optional __strideX)
   (if __strideX (setq _strideX __strideX)) _strideX)
  (:strideY
   (&optional __strideY)
   (if __strideY (setq _strideY __strideY)) _strideY)
  (:posX
   (&optional __posX)
   (if __posX (setq _posX __posX)) _posX)
  (:posY
   (&optional __posY)
   (if __posY (setq _posY __posY)) _posY)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:bodyHeight
   (&optional __bodyHeight)
   (if __bodyHeight (setq _bodyHeight __bodyHeight)) _bodyHeight)
  (:stepHeight
   (&optional __stepHeight)
   (if __stepHeight (setq _stepHeight __stepHeight)) _stepHeight)
  (:serialization-length
   ()
   (+
    ;; float64 _gaitFlag
    8
    ;; float64 _gaitCycle
    8
    ;; float64 _strideX
    8
    ;; float64 _strideY
    8
    ;; float64 _posX
    8
    ;; float64 _posY
    8
    ;; float64 _yaw
    8
    ;; float64 _pitch
    8
    ;; float64 _roll
    8
    ;; float64 _bodyHeight
    8
    ;; float64 _stepHeight
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _gaitFlag
       (sys::poke _gaitFlag (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gaitCycle
       (sys::poke _gaitCycle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _strideX
       (sys::poke _strideX (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _strideY
       (sys::poke _strideY (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _posX
       (sys::poke _posX (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _posY
       (sys::poke _posY (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _bodyHeight
       (sys::poke _bodyHeight (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _stepHeight
       (sys::poke _stepHeight (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _gaitFlag
     (setq _gaitFlag (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gaitCycle
     (setq _gaitCycle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _strideX
     (setq _strideX (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _strideY
     (setq _strideY (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _posX
     (setq _posX (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _posY
     (setq _posY (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _bodyHeight
     (setq _bodyHeight (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _stepHeight
     (setq _stepHeight (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get hexapod_msg::commands :md5sum-) "1cf61961f72659f1f2317cb2c8fc565b")
(setf (get hexapod_msg::commands :datatype-) "hexapod_msg/commands")
(setf (get hexapod_msg::commands :definition-)
      "float64 gaitFlag #2-二步态 3-三步态 6-六步态 20-侧向二步态 30-侧向三步态 60-侧向六步态 7-手动步态 8-原地转向 9-自由 10-爬坡 11-越障 12-过沟 13-涉水 14-侧倾
float64 gaitCycle
float64 strideX
float64 strideY
float64 posX
float64 posY
float64 yaw
float64 pitch
float64 roll
float64 bodyHeight
float64 stepHeight


")



(provide :hexapod_msg/commands "1cf61961f72659f1f2317cb2c8fc565b")


