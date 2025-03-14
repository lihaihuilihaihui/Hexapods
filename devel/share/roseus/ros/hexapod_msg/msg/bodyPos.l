;; Auto-generated. Do not edit!


(when (boundp 'hexapod_msg::bodyPos)
  (if (not (find-package "HEXAPOD_MSG"))
    (make-package "HEXAPOD_MSG"))
  (shadow 'bodyPos (find-package "HEXAPOD_MSG")))
(unless (find-package "HEXAPOD_MSG::BODYPOS")
  (make-package "HEXAPOD_MSG::BODYPOS"))

(in-package "ROS")
;;//! \htmlinclude bodyPos.msg.html


(defclass hexapod_msg::bodyPos
  :super ros::object
  :slots (_posX _posY _posZ _pitch _roll _yaw _body_posX _body_posY _body_posZ ))

(defmethod hexapod_msg::bodyPos
  (:init
   (&key
    ((:posX __posX) 0.0)
    ((:posY __posY) 0.0)
    ((:posZ __posZ) 0.0)
    ((:pitch __pitch) 0.0)
    ((:roll __roll) 0.0)
    ((:yaw __yaw) 0.0)
    ((:body_posX __body_posX) 0.0)
    ((:body_posY __body_posY) 0.0)
    ((:body_posZ __body_posZ) 0.0)
    )
   (send-super :init)
   (setq _posX (float __posX))
   (setq _posY (float __posY))
   (setq _posZ (float __posZ))
   (setq _pitch (float __pitch))
   (setq _roll (float __roll))
   (setq _yaw (float __yaw))
   (setq _body_posX (float __body_posX))
   (setq _body_posY (float __body_posY))
   (setq _body_posZ (float __body_posZ))
   self)
  (:posX
   (&optional __posX)
   (if __posX (setq _posX __posX)) _posX)
  (:posY
   (&optional __posY)
   (if __posY (setq _posY __posY)) _posY)
  (:posZ
   (&optional __posZ)
   (if __posZ (setq _posZ __posZ)) _posZ)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:body_posX
   (&optional __body_posX)
   (if __body_posX (setq _body_posX __body_posX)) _body_posX)
  (:body_posY
   (&optional __body_posY)
   (if __body_posY (setq _body_posY __body_posY)) _body_posY)
  (:body_posZ
   (&optional __body_posZ)
   (if __body_posZ (setq _body_posZ __body_posZ)) _body_posZ)
  (:serialization-length
   ()
   (+
    ;; float64 _posX
    8
    ;; float64 _posY
    8
    ;; float64 _posZ
    8
    ;; float64 _pitch
    8
    ;; float64 _roll
    8
    ;; float64 _yaw
    8
    ;; float64 _body_posX
    8
    ;; float64 _body_posY
    8
    ;; float64 _body_posZ
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _posX
       (sys::poke _posX (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _posY
       (sys::poke _posY (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _posZ
       (sys::poke _posZ (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _body_posX
       (sys::poke _body_posX (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _body_posY
       (sys::poke _body_posY (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _body_posZ
       (sys::poke _body_posZ (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _posX
     (setq _posX (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _posY
     (setq _posY (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _posZ
     (setq _posZ (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _body_posX
     (setq _body_posX (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _body_posY
     (setq _body_posY (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _body_posZ
     (setq _body_posZ (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get hexapod_msg::bodyPos :md5sum-) "167df86e3204d5ea278732d95064ab3b")
(setf (get hexapod_msg::bodyPos :datatype-) "hexapod_msg/bodyPos")
(setf (get hexapod_msg::bodyPos :definition-)
      "float64 posX
float64 posY
float64 posZ
float64 pitch
float64 roll
float64 yaw
float64 body_posX
float64 body_posY
float64 body_posZ
")



(provide :hexapod_msg/bodyPos "167df86e3204d5ea278732d95064ab3b")


