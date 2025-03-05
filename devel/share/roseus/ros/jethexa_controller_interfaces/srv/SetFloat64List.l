;; Auto-generated. Do not edit!


(when (boundp 'jethexa_controller_interfaces::SetFloat64List)
  (if (not (find-package "JETHEXA_CONTROLLER_INTERFACES"))
    (make-package "JETHEXA_CONTROLLER_INTERFACES"))
  (shadow 'SetFloat64List (find-package "JETHEXA_CONTROLLER_INTERFACES")))
(unless (find-package "JETHEXA_CONTROLLER_INTERFACES::SETFLOAT64LIST")
  (make-package "JETHEXA_CONTROLLER_INTERFACES::SETFLOAT64LIST"))
(unless (find-package "JETHEXA_CONTROLLER_INTERFACES::SETFLOAT64LISTREQUEST")
  (make-package "JETHEXA_CONTROLLER_INTERFACES::SETFLOAT64LISTREQUEST"))
(unless (find-package "JETHEXA_CONTROLLER_INTERFACES::SETFLOAT64LISTRESPONSE")
  (make-package "JETHEXA_CONTROLLER_INTERFACES::SETFLOAT64LISTRESPONSE"))

(in-package "ROS")





(defclass jethexa_controller_interfaces::SetFloat64ListRequest
  :super ros::object
  :slots (_data ))

(defmethod jethexa_controller_interfaces::SetFloat64ListRequest
  (:init
   (&key
    ((:data __data) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; float64[] _data
    (* 8    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (sys::poke (elt _data i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass jethexa_controller_interfaces::SetFloat64ListResponse
  :super ros::object
  :slots (_success _message ))

(defmethod jethexa_controller_interfaces::SetFloat64ListResponse
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

(defclass jethexa_controller_interfaces::SetFloat64List
  :super ros::object
  :slots ())

(setf (get jethexa_controller_interfaces::SetFloat64List :md5sum-) "5739026f6f0517440e663ba60441de94")
(setf (get jethexa_controller_interfaces::SetFloat64List :datatype-) "jethexa_controller_interfaces/SetFloat64List")
(setf (get jethexa_controller_interfaces::SetFloat64List :request) jethexa_controller_interfaces::SetFloat64ListRequest)
(setf (get jethexa_controller_interfaces::SetFloat64List :response) jethexa_controller_interfaces::SetFloat64ListResponse)

(defmethod jethexa_controller_interfaces::SetFloat64ListRequest
  (:response () (instance jethexa_controller_interfaces::SetFloat64ListResponse :init)))

(setf (get jethexa_controller_interfaces::SetFloat64ListRequest :md5sum-) "5739026f6f0517440e663ba60441de94")
(setf (get jethexa_controller_interfaces::SetFloat64ListRequest :datatype-) "jethexa_controller_interfaces/SetFloat64ListRequest")
(setf (get jethexa_controller_interfaces::SetFloat64ListRequest :definition-)
      "float64[] data
---
bool success
string message
")

(setf (get jethexa_controller_interfaces::SetFloat64ListResponse :md5sum-) "5739026f6f0517440e663ba60441de94")
(setf (get jethexa_controller_interfaces::SetFloat64ListResponse :datatype-) "jethexa_controller_interfaces/SetFloat64ListResponse")
(setf (get jethexa_controller_interfaces::SetFloat64ListResponse :definition-)
      "float64[] data
---
bool success
string message
")



(provide :jethexa_controller_interfaces/SetFloat64List "5739026f6f0517440e663ba60441de94")


