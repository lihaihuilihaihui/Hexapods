;; Auto-generated. Do not edit!


(when (boundp 'hexapod_msg::footPosition)
  (if (not (find-package "HEXAPOD_MSG"))
    (make-package "HEXAPOD_MSG"))
  (shadow 'footPosition (find-package "HEXAPOD_MSG")))
(unless (find-package "HEXAPOD_MSG::FOOTPOSITION")
  (make-package "HEXAPOD_MSG::FOOTPOSITION"))

(in-package "ROS")
;;//! \htmlinclude footPosition.msg.html


(defclass hexapod_msg::footPosition
  :super ros::object
  :slots (_x _y _z ))

(defmethod hexapod_msg::footPosition
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get hexapod_msg::footPosition :md5sum-) "4a842b65f413084dc2b10fb484ea7f17")
(setf (get hexapod_msg::footPosition :datatype-) "hexapod_msg/footPosition")
(setf (get hexapod_msg::footPosition :definition-)
      "float64 x
float64 y
float64 z
")



(provide :hexapod_msg/footPosition "4a842b65f413084dc2b10fb484ea7f17")


