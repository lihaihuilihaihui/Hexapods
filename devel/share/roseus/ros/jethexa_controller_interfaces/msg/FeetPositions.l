;; Auto-generated. Do not edit!


(when (boundp 'jethexa_controller_interfaces::FeetPositions)
  (if (not (find-package "JETHEXA_CONTROLLER_INTERFACES"))
    (make-package "JETHEXA_CONTROLLER_INTERFACES"))
  (shadow 'FeetPositions (find-package "JETHEXA_CONTROLLER_INTERFACES")))
(unless (find-package "JETHEXA_CONTROLLER_INTERFACES::FEETPOSITIONS")
  (make-package "JETHEXA_CONTROLLER_INTERFACES::FEETPOSITIONS"))

(in-package "ROS")
;;//! \htmlinclude FeetPositions.msg.html


(defclass jethexa_controller_interfaces::FeetPositions
  :super ros::object
  :slots (_foot ))

(defmethod jethexa_controller_interfaces::FeetPositions
  (:init
   (&key
    ((:foot __foot) (let (r) (dotimes (i 6) (push (instance jethexa_controller_interfaces::Pose :init) r)) r))
    )
   (send-super :init)
   (setq _foot __foot)
   self)
  (:foot
   (&rest __foot)
   (if (keywordp (car __foot))
       (send* _foot __foot)
     (progn
       (if __foot (setq _foot (car __foot)))
       _foot)))
  (:serialization-length
   ()
   (+
    ;; jethexa_controller_interfaces/Pose[6] _foot
    (apply #'+ (send-all _foot :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; jethexa_controller_interfaces/Pose[6] _foot
     (dolist (elem _foot)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; jethexa_controller_interfaces/Pose[6] _foot
   (dotimes (i 6)
     (send (elt _foot i) :deserialize buf ptr-) (incf ptr- (send (elt _foot i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get jethexa_controller_interfaces::FeetPositions :md5sum-) "d12724c3b1519cfb275eb5b1d0e25de2")
(setf (get jethexa_controller_interfaces::FeetPositions :datatype-) "jethexa_controller_interfaces/FeetPositions")
(setf (get jethexa_controller_interfaces::FeetPositions :definition-)
      "Pose[6] foot

================================================================================
MSG: jethexa_controller_interfaces/Pose
geometry_msgs/Point position
Euler orientation
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: jethexa_controller_interfaces/Euler
float64 roll
float64 pitch
float64 yaw
")



(provide :jethexa_controller_interfaces/FeetPositions "d12724c3b1519cfb275eb5b1d0e25de2")


