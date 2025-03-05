;; Auto-generated. Do not edit!


(when (boundp 'jethexa_controller_interfaces::TransformEuler)
  (if (not (find-package "JETHEXA_CONTROLLER_INTERFACES"))
    (make-package "JETHEXA_CONTROLLER_INTERFACES"))
  (shadow 'TransformEuler (find-package "JETHEXA_CONTROLLER_INTERFACES")))
(unless (find-package "JETHEXA_CONTROLLER_INTERFACES::TRANSFORMEULER")
  (make-package "JETHEXA_CONTROLLER_INTERFACES::TRANSFORMEULER"))

(in-package "ROS")
;;//! \htmlinclude TransformEuler.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass jethexa_controller_interfaces::TransformEuler
  :super ros::object
  :slots (_translation _rotation _duration ))

(defmethod jethexa_controller_interfaces::TransformEuler
  (:init
   (&key
    ((:translation __translation) (instance geometry_msgs::Vector3 :init))
    ((:rotation __rotation) (instance geometry_msgs::Vector3 :init))
    ((:duration __duration) 0.0)
    )
   (send-super :init)
   (setq _translation __translation)
   (setq _rotation __rotation)
   (setq _duration (float __duration))
   self)
  (:translation
   (&rest __translation)
   (if (keywordp (car __translation))
       (send* _translation __translation)
     (progn
       (if __translation (setq _translation (car __translation)))
       _translation)))
  (:rotation
   (&rest __rotation)
   (if (keywordp (car __rotation))
       (send* _rotation __rotation)
     (progn
       (if __rotation (setq _rotation (car __rotation)))
       _rotation)))
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _translation
    (send _translation :serialization-length)
    ;; geometry_msgs/Vector3 _rotation
    (send _rotation :serialization-length)
    ;; float64 _duration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _translation
       (send _translation :serialize s)
     ;; geometry_msgs/Vector3 _rotation
       (send _rotation :serialize s)
     ;; float64 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _translation
     (send _translation :deserialize buf ptr-) (incf ptr- (send _translation :serialization-length))
   ;; geometry_msgs/Vector3 _rotation
     (send _rotation :deserialize buf ptr-) (incf ptr- (send _rotation :serialization-length))
   ;; float64 _duration
     (setq _duration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get jethexa_controller_interfaces::TransformEuler :md5sum-) "2a328e1cf0b019f32b038faa157f5f4f")
(setf (get jethexa_controller_interfaces::TransformEuler :datatype-) "jethexa_controller_interfaces/TransformEuler")
(setf (get jethexa_controller_interfaces::TransformEuler :definition-)
      "geometry_msgs/Vector3 translation
geometry_msgs/Vector3 rotation
float64 duration
================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :jethexa_controller_interfaces/TransformEuler "2a328e1cf0b019f32b038faa157f5f4f")


