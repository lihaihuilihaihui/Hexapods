;; Auto-generated. Do not edit!


(when (boundp 'jethexa_controller_interfaces::Traveling)
  (if (not (find-package "JETHEXA_CONTROLLER_INTERFACES"))
    (make-package "JETHEXA_CONTROLLER_INTERFACES"))
  (shadow 'Traveling (find-package "JETHEXA_CONTROLLER_INTERFACES")))
(unless (find-package "JETHEXA_CONTROLLER_INTERFACES::TRAVELING")
  (make-package "JETHEXA_CONTROLLER_INTERFACES::TRAVELING"))

(in-package "ROS")
;;//! \htmlinclude Traveling.msg.html


(defclass jethexa_controller_interfaces::Traveling
  :super ros::object
  :slots (_gait _stride _height _direction _rotation _time _steps _relative_height _interrupt ))

(defmethod jethexa_controller_interfaces::Traveling
  (:init
   (&key
    ((:gait __gait) 0)
    ((:stride __stride) 0.0)
    ((:height __height) 0.0)
    ((:direction __direction) 0.0)
    ((:rotation __rotation) 0.0)
    ((:time __time) 0.0)
    ((:steps __steps) 0)
    ((:relative_height __relative_height) nil)
    ((:interrupt __interrupt) nil)
    )
   (send-super :init)
   (setq _gait (round __gait))
   (setq _stride (float __stride))
   (setq _height (float __height))
   (setq _direction (float __direction))
   (setq _rotation (float __rotation))
   (setq _time (float __time))
   (setq _steps (round __steps))
   (setq _relative_height __relative_height)
   (setq _interrupt __interrupt)
   self)
  (:gait
   (&optional __gait)
   (if __gait (setq _gait __gait)) _gait)
  (:stride
   (&optional __stride)
   (if __stride (setq _stride __stride)) _stride)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:rotation
   (&optional __rotation)
   (if __rotation (setq _rotation __rotation)) _rotation)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:steps
   (&optional __steps)
   (if __steps (setq _steps __steps)) _steps)
  (:relative_height
   (&optional (__relative_height :null))
   (if (not (eq __relative_height :null)) (setq _relative_height __relative_height)) _relative_height)
  (:interrupt
   (&optional (__interrupt :null))
   (if (not (eq __interrupt :null)) (setq _interrupt __interrupt)) _interrupt)
  (:serialization-length
   ()
   (+
    ;; int8 _gait
    1
    ;; float32 _stride
    4
    ;; float32 _height
    4
    ;; float32 _direction
    4
    ;; float32 _rotation
    4
    ;; float32 _time
    4
    ;; uint32 _steps
    4
    ;; bool _relative_height
    1
    ;; bool _interrupt
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _gait
       (write-byte _gait s)
     ;; float32 _stride
       (sys::poke _stride (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _direction
       (sys::poke _direction (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rotation
       (sys::poke _rotation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _time
       (sys::poke _time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _steps
       (write-long _steps s)
     ;; bool _relative_height
       (if _relative_height (write-byte -1 s) (write-byte 0 s))
     ;; bool _interrupt
       (if _interrupt (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _gait
     (setq _gait (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _gait 127) (setq _gait (- _gait 256)))
   ;; float32 _stride
     (setq _stride (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _direction
     (setq _direction (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rotation
     (setq _rotation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _time
     (setq _time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _steps
     (setq _steps (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _relative_height
     (setq _relative_height (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _interrupt
     (setq _interrupt (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get jethexa_controller_interfaces::Traveling :md5sum-) "6fc5a17f1d10ed31886179c4c279d006")
(setf (get jethexa_controller_interfaces::Traveling :datatype-) "jethexa_controller_interfaces/Traveling")
(setf (get jethexa_controller_interfaces::Traveling :definition-)
      "int8 gait
float32 stride
float32 height
float32 direction
float32 rotation
float32 time
uint32 steps
bool relative_height
bool interrupt
")



(provide :jethexa_controller_interfaces/Traveling "6fc5a17f1d10ed31886179c4c279d006")


