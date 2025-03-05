;; Auto-generated. Do not edit!


(when (boundp 'jethexa_controller_interfaces::SetPose1)
  (if (not (find-package "JETHEXA_CONTROLLER_INTERFACES"))
    (make-package "JETHEXA_CONTROLLER_INTERFACES"))
  (shadow 'SetPose1 (find-package "JETHEXA_CONTROLLER_INTERFACES")))
(unless (find-package "JETHEXA_CONTROLLER_INTERFACES::SETPOSE1")
  (make-package "JETHEXA_CONTROLLER_INTERFACES::SETPOSE1"))
(unless (find-package "JETHEXA_CONTROLLER_INTERFACES::SETPOSE1REQUEST")
  (make-package "JETHEXA_CONTROLLER_INTERFACES::SETPOSE1REQUEST"))
(unless (find-package "JETHEXA_CONTROLLER_INTERFACES::SETPOSE1RESPONSE")
  (make-package "JETHEXA_CONTROLLER_INTERFACES::SETPOSE1RESPONSE"))

(in-package "ROS")





(defclass jethexa_controller_interfaces::SetPose1Request
  :super ros::object
  :slots (_pose _duration _interrupt ))

(defmethod jethexa_controller_interfaces::SetPose1Request
  (:init
   (&key
    ((:pose __pose) "")
    ((:duration __duration) 0.0)
    ((:interrupt __interrupt) nil)
    )
   (send-super :init)
   (setq _pose (string __pose))
   (setq _duration (float __duration))
   (setq _interrupt __interrupt)
   self)
  (:pose
   (&optional __pose)
   (if __pose (setq _pose __pose)) _pose)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:interrupt
   (&optional (__interrupt :null))
   (if (not (eq __interrupt :null)) (setq _interrupt __interrupt)) _interrupt)
  (:serialization-length
   ()
   (+
    ;; string _pose
    4 (length _pose)
    ;; float32 _duration
    4
    ;; bool _interrupt
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _pose
       (write-long (length _pose) s) (princ _pose s)
     ;; float32 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _interrupt
       (if _interrupt (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _pose
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _pose (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _duration
     (setq _duration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _interrupt
     (setq _interrupt (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass jethexa_controller_interfaces::SetPose1Response
  :super ros::object
  :slots (_result _message ))

(defmethod jethexa_controller_interfaces::SetPose1Response
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

(defclass jethexa_controller_interfaces::SetPose1
  :super ros::object
  :slots ())

(setf (get jethexa_controller_interfaces::SetPose1 :md5sum-) "13028fae944c7d292e6d7a20d1f599d6")
(setf (get jethexa_controller_interfaces::SetPose1 :datatype-) "jethexa_controller_interfaces/SetPose1")
(setf (get jethexa_controller_interfaces::SetPose1 :request) jethexa_controller_interfaces::SetPose1Request)
(setf (get jethexa_controller_interfaces::SetPose1 :response) jethexa_controller_interfaces::SetPose1Response)

(defmethod jethexa_controller_interfaces::SetPose1Request
  (:response () (instance jethexa_controller_interfaces::SetPose1Response :init)))

(setf (get jethexa_controller_interfaces::SetPose1Request :md5sum-) "13028fae944c7d292e6d7a20d1f599d6")
(setf (get jethexa_controller_interfaces::SetPose1Request :datatype-) "jethexa_controller_interfaces/SetPose1Request")
(setf (get jethexa_controller_interfaces::SetPose1Request :definition-)
      "string pose
float32 duration
bool interrupt
---
int32 result
string message
")

(setf (get jethexa_controller_interfaces::SetPose1Response :md5sum-) "13028fae944c7d292e6d7a20d1f599d6")
(setf (get jethexa_controller_interfaces::SetPose1Response :datatype-) "jethexa_controller_interfaces/SetPose1Response")
(setf (get jethexa_controller_interfaces::SetPose1Response :definition-)
      "string pose
float32 duration
bool interrupt
---
int32 result
string message
")



(provide :jethexa_controller_interfaces/SetPose1 "13028fae944c7d292e6d7a20d1f599d6")


