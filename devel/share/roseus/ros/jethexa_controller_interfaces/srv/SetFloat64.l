;; Auto-generated. Do not edit!


(when (boundp 'jethexa_controller_interfaces::SetFloat64)
  (if (not (find-package "JETHEXA_CONTROLLER_INTERFACES"))
    (make-package "JETHEXA_CONTROLLER_INTERFACES"))
  (shadow 'SetFloat64 (find-package "JETHEXA_CONTROLLER_INTERFACES")))
(unless (find-package "JETHEXA_CONTROLLER_INTERFACES::SETFLOAT64")
  (make-package "JETHEXA_CONTROLLER_INTERFACES::SETFLOAT64"))
(unless (find-package "JETHEXA_CONTROLLER_INTERFACES::SETFLOAT64REQUEST")
  (make-package "JETHEXA_CONTROLLER_INTERFACES::SETFLOAT64REQUEST"))
(unless (find-package "JETHEXA_CONTROLLER_INTERFACES::SETFLOAT64RESPONSE")
  (make-package "JETHEXA_CONTROLLER_INTERFACES::SETFLOAT64RESPONSE"))

(in-package "ROS")





(defclass jethexa_controller_interfaces::SetFloat64Request
  :super ros::object
  :slots (_data ))

(defmethod jethexa_controller_interfaces::SetFloat64Request
  (:init
   (&key
    ((:data __data) 0.0)
    )
   (send-super :init)
   (setq _data (float __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; float64 _data
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _data
       (sys::poke _data (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _data
     (setq _data (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass jethexa_controller_interfaces::SetFloat64Response
  :super ros::object
  :slots (_success _message ))

(defmethod jethexa_controller_interfaces::SetFloat64Response
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass jethexa_controller_interfaces::SetFloat64
  :super ros::object
  :slots ())

(setf (get jethexa_controller_interfaces::SetFloat64 :md5sum-) "3f47c51e9da05852f0d7f484f9279955")
(setf (get jethexa_controller_interfaces::SetFloat64 :datatype-) "jethexa_controller_interfaces/SetFloat64")
(setf (get jethexa_controller_interfaces::SetFloat64 :request) jethexa_controller_interfaces::SetFloat64Request)
(setf (get jethexa_controller_interfaces::SetFloat64 :response) jethexa_controller_interfaces::SetFloat64Response)

(defmethod jethexa_controller_interfaces::SetFloat64Request
  (:response () (instance jethexa_controller_interfaces::SetFloat64Response :init)))

(setf (get jethexa_controller_interfaces::SetFloat64Request :md5sum-) "3f47c51e9da05852f0d7f484f9279955")
(setf (get jethexa_controller_interfaces::SetFloat64Request :datatype-) "jethexa_controller_interfaces/SetFloat64Request")
(setf (get jethexa_controller_interfaces::SetFloat64Request :definition-)
      "float64 data
---
bool success
string message
")

(setf (get jethexa_controller_interfaces::SetFloat64Response :md5sum-) "3f47c51e9da05852f0d7f484f9279955")
(setf (get jethexa_controller_interfaces::SetFloat64Response :datatype-) "jethexa_controller_interfaces/SetFloat64Response")
(setf (get jethexa_controller_interfaces::SetFloat64Response :definition-)
      "float64 data
---
bool success
string message
")



(provide :jethexa_controller_interfaces/SetFloat64 "3f47c51e9da05852f0d7f484f9279955")


