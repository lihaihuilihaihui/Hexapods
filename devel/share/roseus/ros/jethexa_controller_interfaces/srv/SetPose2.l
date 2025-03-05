;; Auto-generated. Do not edit!


(when (boundp 'jethexa_controller_interfaces::SetPose2)
  (if (not (find-package "JETHEXA_CONTROLLER_INTERFACES"))
    (make-package "JETHEXA_CONTROLLER_INTERFACES"))
  (shadow 'SetPose2 (find-package "JETHEXA_CONTROLLER_INTERFACES")))
(unless (find-package "JETHEXA_CONTROLLER_INTERFACES::SETPOSE2")
  (make-package "JETHEXA_CONTROLLER_INTERFACES::SETPOSE2"))
(unless (find-package "JETHEXA_CONTROLLER_INTERFACES::SETPOSE2REQUEST")
  (make-package "JETHEXA_CONTROLLER_INTERFACES::SETPOSE2REQUEST"))
(unless (find-package "JETHEXA_CONTROLLER_INTERFACES::SETPOSE2RESPONSE")
  (make-package "JETHEXA_CONTROLLER_INTERFACES::SETPOSE2RESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass jethexa_controller_interfaces::SetPose2Request
  :super ros::object
  :slots (_pose _duration _interrupt ))

(defmethod jethexa_controller_interfaces::SetPose2Request
  (:init
   (&key
    ((:pose __pose) ())
    ((:duration __duration) 0.0)
    ((:interrupt __interrupt) nil)
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _duration (float __duration))
   (setq _interrupt __interrupt)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:interrupt
   (&optional (__interrupt :null))
   (if (not (eq __interrupt :null)) (setq _interrupt __interrupt)) _interrupt)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point32[] _pose
    (apply #'+ (send-all _pose :serialization-length)) 4
    ;; float32 _duration
    4
    ;; bool _interrupt
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point32[] _pose
     (write-long (length _pose) s)
     (dolist (elem _pose)
       (send elem :serialize s)
       )
     ;; float32 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _interrupt
       (if _interrupt (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point32[] _pose
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose (let (r) (dotimes (i n) (push (instance geometry_msgs::Point32 :init) r)) r))
     (dolist (elem- _pose)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _duration
     (setq _duration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _interrupt
     (setq _interrupt (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass jethexa_controller_interfaces::SetPose2Response
  :super ros::object
  :slots (_result _message ))

(defmethod jethexa_controller_interfaces::SetPose2Response
  (:init
   (&key
    ((:result __result) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _result (round __result))
   (setq _message (string __message))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; int32 _result
    4
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _result
       (write-long _result s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _result
     (setq _result (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass jethexa_controller_interfaces::SetPose2
  :super ros::object
  :slots ())

(setf (get jethexa_controller_interfaces::SetPose2 :md5sum-) "595abd8c189b2179c98ec4c165f7d2cd")
(setf (get jethexa_controller_interfaces::SetPose2 :datatype-) "jethexa_controller_interfaces/SetPose2")
(setf (get jethexa_controller_interfaces::SetPose2 :request) jethexa_controller_interfaces::SetPose2Request)
(setf (get jethexa_controller_interfaces::SetPose2 :response) jethexa_controller_interfaces::SetPose2Response)

(defmethod jethexa_controller_interfaces::SetPose2Request
  (:response () (instance jethexa_controller_interfaces::SetPose2Response :init)))

(setf (get jethexa_controller_interfaces::SetPose2Request :md5sum-) "595abd8c189b2179c98ec4c165f7d2cd")
(setf (get jethexa_controller_interfaces::SetPose2Request :datatype-) "jethexa_controller_interfaces/SetPose2Request")
(setf (get jethexa_controller_interfaces::SetPose2Request :definition-)
      "geometry_msgs/Point32[] pose
float32 duration
bool interrupt

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
---
int32 result
string message
")

(setf (get jethexa_controller_interfaces::SetPose2Response :md5sum-) "595abd8c189b2179c98ec4c165f7d2cd")
(setf (get jethexa_controller_interfaces::SetPose2Response :datatype-) "jethexa_controller_interfaces/SetPose2Response")
(setf (get jethexa_controller_interfaces::SetPose2Response :definition-)
      "geometry_msgs/Point32[] pose
float32 duration
bool interrupt

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
---
int32 result
string message
")



(provide :jethexa_controller_interfaces/SetPose2 "595abd8c189b2179c98ec4c165f7d2cd")


