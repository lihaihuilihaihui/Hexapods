;; Auto-generated. Do not edit!


(when (boundp 'jethexa_controller_interfaces::RunActionSet)
  (if (not (find-package "JETHEXA_CONTROLLER_INTERFACES"))
    (make-package "JETHEXA_CONTROLLER_INTERFACES"))
  (shadow 'RunActionSet (find-package "JETHEXA_CONTROLLER_INTERFACES")))
(unless (find-package "JETHEXA_CONTROLLER_INTERFACES::RUNACTIONSET")
  (make-package "JETHEXA_CONTROLLER_INTERFACES::RUNACTIONSET"))

(in-package "ROS")
;;//! \htmlinclude RunActionSet.msg.html


(defclass jethexa_controller_interfaces::RunActionSet
  :super ros::object
  :slots (_action_path _repeat _interrupt _default_path ))

(defmethod jethexa_controller_interfaces::RunActionSet
  (:init
   (&key
    ((:action_path __action_path) "")
    ((:repeat __repeat) 0)
    ((:interrupt __interrupt) nil)
    ((:default_path __default_path) nil)
    )
   (send-super :init)
   (setq _action_path (string __action_path))
   (setq _repeat (round __repeat))
   (setq _interrupt __interrupt)
   (setq _default_path __default_path)
   self)
  (:action_path
   (&optional __action_path)
   (if __action_path (setq _action_path __action_path)) _action_path)
  (:repeat
   (&optional __repeat)
   (if __repeat (setq _repeat __repeat)) _repeat)
  (:interrupt
   (&optional (__interrupt :null))
   (if (not (eq __interrupt :null)) (setq _interrupt __interrupt)) _interrupt)
  (:default_path
   (&optional (__default_path :null))
   (if (not (eq __default_path :null)) (setq _default_path __default_path)) _default_path)
  (:serialization-length
   ()
   (+
    ;; string _action_path
    4 (length _action_path)
    ;; int32 _repeat
    4
    ;; bool _interrupt
    1
    ;; bool _default_path
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _action_path
       (write-long (length _action_path) s) (princ _action_path s)
     ;; int32 _repeat
       (write-long _repeat s)
     ;; bool _interrupt
       (if _interrupt (write-byte -1 s) (write-byte 0 s))
     ;; bool _default_path
       (if _default_path (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _action_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _action_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _repeat
     (setq _repeat (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _interrupt
     (setq _interrupt (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _default_path
     (setq _default_path (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get jethexa_controller_interfaces::RunActionSet :md5sum-) "0956453a105a32316a59c54fb351ae16")
(setf (get jethexa_controller_interfaces::RunActionSet :datatype-) "jethexa_controller_interfaces/RunActionSet")
(setf (get jethexa_controller_interfaces::RunActionSet :definition-)
      "# Request
string action_path
int32 repeat
bool interrupt
bool default_path

")



(provide :jethexa_controller_interfaces/RunActionSet "0956453a105a32316a59c54fb351ae16")


