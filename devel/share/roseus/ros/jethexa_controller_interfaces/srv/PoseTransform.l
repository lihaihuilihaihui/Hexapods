;; Auto-generated. Do not edit!


(when (boundp 'jethexa_controller_interfaces::PoseTransform)
  (if (not (find-package "JETHEXA_CONTROLLER_INTERFACES"))
    (make-package "JETHEXA_CONTROLLER_INTERFACES"))
  (shadow 'PoseTransform (find-package "JETHEXA_CONTROLLER_INTERFACES")))
(unless (find-package "JETHEXA_CONTROLLER_INTERFACES::POSETRANSFORM")
  (make-package "JETHEXA_CONTROLLER_INTERFACES::POSETRANSFORM"))
(unless (find-package "JETHEXA_CONTROLLER_INTERFACES::POSETRANSFORMREQUEST")
  (make-package "JETHEXA_CONTROLLER_INTERFACES::POSETRANSFORMREQUEST"))
(unless (find-package "JETHEXA_CONTROLLER_INTERFACES::POSETRANSFORMRESPONSE")
  (make-package "JETHEXA_CONTROLLER_INTERFACES::POSETRANSFORMRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass jethexa_controller_interfaces::PoseTransformRequest
  :super ros::object
  :slots (_transform _duration _interrupt ))

(defmethod jethexa_controller_interfaces::PoseTransformRequest
  (:init
   (&key
    ((:transform __transform) (instance geometry_msgs::Transform :init))
    ((:duration __duration) 0.0)
    ((:interrupt __interrupt) nil)
    )
   (send-super :init)
   (setq _transform __transform)
   (setq _duration (float __duration))
   (setq _interrupt __interrupt)
   self)
  (:transform
   (&rest __transform)
   (if (keywordp (car __transform))
       (send* _transform __transform)
     (progn
       (if __transform (setq _transform (car __transform)))
       _transform)))
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:interrupt
   (&optional (__interrupt :null))
   (if (not (eq __interrupt :null)) (setq _interrupt __interrupt)) _interrupt)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Transform _transform
    (send _transform :serialization-length)
    ;; float32 _duration
    4
    ;; bool _interrupt
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Transform _transform
       (send _transform :serialize s)
     ;; float32 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _interrupt
       (if _interrupt (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Transform _transform
     (send _transform :deserialize buf ptr-) (incf ptr- (send _transform :serialization-length))
   ;; float32 _duration
     (setq _duration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _interrupt
     (setq _interrupt (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass jethexa_controller_interfaces::PoseTransformResponse
  :super ros::object
  :slots (_result _message ))

(defmethod jethexa_controller_interfaces::PoseTransformResponse
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

(defclass jethexa_controller_interfaces::PoseTransform
  :super ros::object
  :slots ())

(setf (get jethexa_controller_interfaces::PoseTransform :md5sum-) "4cd99d259c76651e37d160a72014e6f9")
(setf (get jethexa_controller_interfaces::PoseTransform :datatype-) "jethexa_controller_interfaces/PoseTransform")
(setf (get jethexa_controller_interfaces::PoseTransform :request) jethexa_controller_interfaces::PoseTransformRequest)
(setf (get jethexa_controller_interfaces::PoseTransform :response) jethexa_controller_interfaces::PoseTransformResponse)

(defmethod jethexa_controller_interfaces::PoseTransformRequest
  (:response () (instance jethexa_controller_interfaces::PoseTransformResponse :init)))

(setf (get jethexa_controller_interfaces::PoseTransformRequest :md5sum-) "4cd99d259c76651e37d160a72014e6f9")
(setf (get jethexa_controller_interfaces::PoseTransformRequest :datatype-) "jethexa_controller_interfaces/PoseTransformRequest")
(setf (get jethexa_controller_interfaces::PoseTransformRequest :definition-)
      "geometry_msgs/Transform transform
float32 duration
bool interrupt

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

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
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
int32 result
string message

")

(setf (get jethexa_controller_interfaces::PoseTransformResponse :md5sum-) "4cd99d259c76651e37d160a72014e6f9")
(setf (get jethexa_controller_interfaces::PoseTransformResponse :datatype-) "jethexa_controller_interfaces/PoseTransformResponse")
(setf (get jethexa_controller_interfaces::PoseTransformResponse :definition-)
      "geometry_msgs/Transform transform
float32 duration
bool interrupt

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

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
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
int32 result
string message

")



(provide :jethexa_controller_interfaces/PoseTransform "4cd99d259c76651e37d160a72014e6f9")


