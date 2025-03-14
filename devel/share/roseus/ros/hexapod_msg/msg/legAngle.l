;; Auto-generated. Do not edit!


(when (boundp 'hexapod_msg::legAngle)
  (if (not (find-package "HEXAPOD_MSG"))
    (make-package "HEXAPOD_MSG"))
  (shadow 'legAngle (find-package "HEXAPOD_MSG")))
(unless (find-package "HEXAPOD_MSG::LEGANGLE")
  (make-package "HEXAPOD_MSG::LEGANGLE"))

(in-package "ROS")
;;//! \htmlinclude legAngle.msg.html


(defclass hexapod_msg::legAngle
  :super ros::object
  :slots (_Angle1 _Angle2 _Angle3 ))

(defmethod hexapod_msg::legAngle
  (:init
   (&key
    ((:Angle1 __Angle1) 0.0)
    ((:Angle2 __Angle2) 0.0)
    ((:Angle3 __Angle3) 0.0)
    )
   (send-super :init)
   (setq _Angle1 (float __Angle1))
   (setq _Angle2 (float __Angle2))
   (setq _Angle3 (float __Angle3))
   self)
  (:Angle1
   (&optional __Angle1)
   (if __Angle1 (setq _Angle1 __Angle1)) _Angle1)
  (:Angle2
   (&optional __Angle2)
   (if __Angle2 (setq _Angle2 __Angle2)) _Angle2)
  (:Angle3
   (&optional __Angle3)
   (if __Angle3 (setq _Angle3 __Angle3)) _Angle3)
  (:serialization-length
   ()
   (+
    ;; float64 _Angle1
    8
    ;; float64 _Angle2
    8
    ;; float64 _Angle3
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _Angle1
       (sys::poke _Angle1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Angle2
       (sys::poke _Angle2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Angle3
       (sys::poke _Angle3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _Angle1
     (setq _Angle1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Angle2
     (setq _Angle2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Angle3
     (setq _Angle3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get hexapod_msg::legAngle :md5sum-) "c136d8648a895dda5df63c2c29230290")
(setf (get hexapod_msg::legAngle :datatype-) "hexapod_msg/legAngle")
(setf (get hexapod_msg::legAngle :definition-)
      "float64 Angle1
float64 Angle2
float64 Angle3
")



(provide :hexapod_msg/legAngle "c136d8648a895dda5df63c2c29230290")


