;; Auto-generated. Do not edit!


(when (boundp 'jethexa_controller_interfaces::SetHead)
  (if (not (find-package "JETHEXA_CONTROLLER_INTERFACES"))
    (make-package "JETHEXA_CONTROLLER_INTERFACES"))
  (shadow 'SetHead (find-package "JETHEXA_CONTROLLER_INTERFACES")))
(unless (find-package "JETHEXA_CONTROLLER_INTERFACES::SETHEAD")
  (make-package "JETHEXA_CONTROLLER_INTERFACES::SETHEAD"))

(in-package "ROS")
;;//! \htmlinclude SetHead.msg.html


(defclass jethexa_controller_interfaces::SetHead
  :super ros::object
  :slots (_rpy _duration ))

(defmethod jethexa_controller_interfaces::SetHead
  (:init
   (&key
    ((:rpy __rpy) (instance jethexa_controller_interfaces::Euler :init))
    ((:duration __duration) 0.0)
    )
   (send-super :init)
   (setq _rpy __rpy)
   (setq _duration (float __duration))
   self)
  (:rpy
   (&rest __rpy)
   (if (keywordp (car __rpy))
       (send* _rpy __rpy)
     (progn
       (if __rpy (setq _rpy (car __rpy)))
       _rpy)))
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; jethexa_controller_interfaces/Euler _rpy
    (send _rpy :serialization-length)
    ;; float64 _duration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; jethexa_controller_interfaces/Euler _rpy
       (send _rpy :serialize s)
     ;; float64 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; jethexa_controller_interfaces/Euler _rpy
     (send _rpy :deserialize buf ptr-) (incf ptr- (send _rpy :serialization-length))
   ;; float64 _duration
     (setq _duration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get jethexa_controller_interfaces::SetHead :md5sum-) "269ab51efb365ba39dc916c41e7ee5e2")
(setf (get jethexa_controller_interfaces::SetHead :datatype-) "jethexa_controller_interfaces/SetHead")
(setf (get jethexa_controller_interfaces::SetHead :definition-)
      "Euler rpy
float64 duration


================================================================================
MSG: jethexa_controller_interfaces/Euler
float64 roll
float64 pitch
float64 yaw
")



(provide :jethexa_controller_interfaces/SetHead "269ab51efb365ba39dc916c41e7ee5e2")


