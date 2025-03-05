;; Auto-generated. Do not edit!


(when (boundp 'jethexa_controller_interfaces::LegPosition)
  (if (not (find-package "JETHEXA_CONTROLLER_INTERFACES"))
    (make-package "JETHEXA_CONTROLLER_INTERFACES"))
  (shadow 'LegPosition (find-package "JETHEXA_CONTROLLER_INTERFACES")))
(unless (find-package "JETHEXA_CONTROLLER_INTERFACES::LEGPOSITION")
  (make-package "JETHEXA_CONTROLLER_INTERFACES::LEGPOSITION"))

(in-package "ROS")
;;//! \htmlinclude LegPosition.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass jethexa_controller_interfaces::LegPosition
  :super ros::object
  :slots (_leg_id _duration _position ))

(defmethod jethexa_controller_interfaces::LegPosition
  (:init
   (&key
    ((:leg_id __leg_id) 0)
    ((:duration __duration) 0.0)
    ((:position __position) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _leg_id (round __leg_id))
   (setq _duration (float __duration))
   (setq _position __position)
   self)
  (:leg_id
   (&optional __leg_id)
   (if __leg_id (setq _leg_id __leg_id)) _leg_id)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:serialization-length
   ()
   (+
    ;; uint8 _leg_id
    1
    ;; float32 _duration
    4
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _leg_id
       (write-byte _leg_id s)
     ;; float32 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _leg_id
     (setq _leg_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _duration
     (setq _duration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;;
   self)
  )

(setf (get jethexa_controller_interfaces::LegPosition :md5sum-) "6950a434049c35d066c094e6cf6b87eb")
(setf (get jethexa_controller_interfaces::LegPosition :datatype-) "jethexa_controller_interfaces/LegPosition")
(setf (get jethexa_controller_interfaces::LegPosition :definition-)
      "uint8 leg_id
float32 duration
geometry_msgs/Point position

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :jethexa_controller_interfaces/LegPosition "6950a434049c35d066c094e6cf6b87eb")


