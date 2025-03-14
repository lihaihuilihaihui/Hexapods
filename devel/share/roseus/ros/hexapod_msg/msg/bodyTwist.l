;; Auto-generated. Do not edit!


(when (boundp 'hexapod_msg::bodyTwist)
  (if (not (find-package "HEXAPOD_MSG"))
    (make-package "HEXAPOD_MSG"))
  (shadow 'bodyTwist (find-package "HEXAPOD_MSG")))
(unless (find-package "HEXAPOD_MSG::BODYTWIST")
  (make-package "HEXAPOD_MSG::BODYTWIST"))

(in-package "ROS")
;;//! \htmlinclude bodyTwist.msg.html


(defclass hexapod_msg::bodyTwist
  :super ros::object
  :slots (_angular_x _angular_y _angular_z _linear_x _linear_y _linear_z ))

(defmethod hexapod_msg::bodyTwist
  (:init
   (&key
    ((:angular_x __angular_x) 0.0)
    ((:angular_y __angular_y) 0.0)
    ((:angular_z __angular_z) 0.0)
    ((:linear_x __linear_x) 0.0)
    ((:linear_y __linear_y) 0.0)
    ((:linear_z __linear_z) 0.0)
    )
   (send-super :init)
   (setq _angular_x (float __angular_x))
   (setq _angular_y (float __angular_y))
   (setq _angular_z (float __angular_z))
   (setq _linear_x (float __linear_x))
   (setq _linear_y (float __linear_y))
   (setq _linear_z (float __linear_z))
   self)
  (:angular_x
   (&optional __angular_x)
   (if __angular_x (setq _angular_x __angular_x)) _angular_x)
  (:angular_y
   (&optional __angular_y)
   (if __angular_y (setq _angular_y __angular_y)) _angular_y)
  (:angular_z
   (&optional __angular_z)
   (if __angular_z (setq _angular_z __angular_z)) _angular_z)
  (:linear_x
   (&optional __linear_x)
   (if __linear_x (setq _linear_x __linear_x)) _linear_x)
  (:linear_y
   (&optional __linear_y)
   (if __linear_y (setq _linear_y __linear_y)) _linear_y)
  (:linear_z
   (&optional __linear_z)
   (if __linear_z (setq _linear_z __linear_z)) _linear_z)
  (:serialization-length
   ()
   (+
    ;; float64 _angular_x
    8
    ;; float64 _angular_y
    8
    ;; float64 _angular_z
    8
    ;; float64 _linear_x
    8
    ;; float64 _linear_y
    8
    ;; float64 _linear_z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _angular_x
       (sys::poke _angular_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_y
       (sys::poke _angular_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_z
       (sys::poke _angular_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _linear_x
       (sys::poke _linear_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _linear_y
       (sys::poke _linear_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _linear_z
       (sys::poke _linear_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _angular_x
     (setq _angular_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_y
     (setq _angular_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_z
     (setq _angular_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _linear_x
     (setq _linear_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _linear_y
     (setq _linear_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _linear_z
     (setq _linear_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get hexapod_msg::bodyTwist :md5sum-) "aebf5077596911a1b7b2a28523ac0efb")
(setf (get hexapod_msg::bodyTwist :datatype-) "hexapod_msg/bodyTwist")
(setf (get hexapod_msg::bodyTwist :definition-)
      "float64 angular_x
float64 angular_y
float64 angular_z
float64 linear_x
float64 linear_y
float64 linear_z

")



(provide :hexapod_msg/bodyTwist "aebf5077596911a1b7b2a28523ac0efb")


