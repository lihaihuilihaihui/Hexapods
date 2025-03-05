;; Auto-generated. Do not edit!


(when (boundp 'jethexa_controller_interfaces::SimpleMoving)
  (if (not (find-package "JETHEXA_CONTROLLER_INTERFACES"))
    (make-package "JETHEXA_CONTROLLER_INTERFACES"))
  (shadow 'SimpleMoving (find-package "JETHEXA_CONTROLLER_INTERFACES")))
(unless (find-package "JETHEXA_CONTROLLER_INTERFACES::SIMPLEMOVING")
  (make-package "JETHEXA_CONTROLLER_INTERFACES::SIMPLEMOVING"))
(unless (find-package "JETHEXA_CONTROLLER_INTERFACES::SIMPLEMOVINGREQUEST")
  (make-package "JETHEXA_CONTROLLER_INTERFACES::SIMPLEMOVINGREQUEST"))
(unless (find-package "JETHEXA_CONTROLLER_INTERFACES::SIMPLEMOVINGRESPONSE")
  (make-package "JETHEXA_CONTROLLER_INTERFACES::SIMPLEMOVINGRESPONSE"))

(in-package "ROS")





(defclass jethexa_controller_interfaces::SimpleMovingRequest
  :super ros::object
  :slots (_moving _repeat _interrupt ))

(defmethod jethexa_controller_interfaces::SimpleMovingRequest
  (:init
   (&key
    ((:moving __moving) 0)
    ((:repeat __repeat) 0)
    ((:interrupt __interrupt) nil)
    )
   (send-super :init)
   (setq _moving (round __moving))
   (setq _repeat (round __repeat))
   (setq _interrupt __interrupt)
   self)
  (:moving
   (&optional __moving)
   (if __moving (setq _moving __moving)) _moving)
  (:repeat
   (&optional __repeat)
   (if __repeat (setq _repeat __repeat)) _repeat)
  (:interrupt
   (&optional (__interrupt :null))
   (if (not (eq __interrupt :null)) (setq _interrupt __interrupt)) _interrupt)
  (:serialization-length
   ()
   (+
    ;; int8 _moving
    1
    ;; int32 _repeat
    4
    ;; bool _interrupt
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _moving
       (write-byte _moving s)
     ;; int32 _repeat
       (write-long _repeat s)
     ;; bool _interrupt
       (if _interrupt (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _moving
     (setq _moving (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _moving 127) (setq _moving (- _moving 256)))
   ;; int32 _repeat
     (setq _repeat (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _interrupt
     (setq _interrupt (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass jethexa_controller_interfaces::SimpleMovingResponse
  :super ros::object
  :slots (_result _message ))

(defmethod jethexa_controller_interfaces::SimpleMovingResponse
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

(defclass jethexa_controller_interfaces::SimpleMoving
  :super ros::object
  :slots ())

(setf (get jethexa_controller_interfaces::SimpleMoving :md5sum-) "54ab04357ebe8bc7a124e7d0526d9213")
(setf (get jethexa_controller_interfaces::SimpleMoving :datatype-) "jethexa_controller_interfaces/SimpleMoving")
(setf (get jethexa_controller_interfaces::SimpleMoving :request) jethexa_controller_interfaces::SimpleMovingRequest)
(setf (get jethexa_controller_interfaces::SimpleMoving :response) jethexa_controller_interfaces::SimpleMovingResponse)

(defmethod jethexa_controller_interfaces::SimpleMovingRequest
  (:response () (instance jethexa_controller_interfaces::SimpleMovingResponse :init)))

(setf (get jethexa_controller_interfaces::SimpleMovingRequest :md5sum-) "54ab04357ebe8bc7a124e7d0526d9213")
(setf (get jethexa_controller_interfaces::SimpleMovingRequest :datatype-) "jethexa_controller_interfaces/SimpleMovingRequest")
(setf (get jethexa_controller_interfaces::SimpleMovingRequest :definition-)
      "# Request
int8 moving
int32   repeat
bool interrupt
---
# Result
int32 result
string message

")

(setf (get jethexa_controller_interfaces::SimpleMovingResponse :md5sum-) "54ab04357ebe8bc7a124e7d0526d9213")
(setf (get jethexa_controller_interfaces::SimpleMovingResponse :datatype-) "jethexa_controller_interfaces/SimpleMovingResponse")
(setf (get jethexa_controller_interfaces::SimpleMovingResponse :definition-)
      "# Request
int8 moving
int32   repeat
bool interrupt
---
# Result
int32 result
string message

")



(provide :jethexa_controller_interfaces/SimpleMoving "54ab04357ebe8bc7a124e7d0526d9213")


