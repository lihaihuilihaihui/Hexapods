;; Auto-generated. Do not edit!


(when (boundp 'jethexa_controller_interfaces::LegJoints)
  (if (not (find-package "JETHEXA_CONTROLLER_INTERFACES"))
    (make-package "JETHEXA_CONTROLLER_INTERFACES"))
  (shadow 'LegJoints (find-package "JETHEXA_CONTROLLER_INTERFACES")))
(unless (find-package "JETHEXA_CONTROLLER_INTERFACES::LEGJOINTS")
  (make-package "JETHEXA_CONTROLLER_INTERFACES::LEGJOINTS"))

(in-package "ROS")
;;//! \htmlinclude LegJoints.msg.html


(defclass jethexa_controller_interfaces::LegJoints
  :super ros::object
  :slots (_coxa _femur _tibia _tarsus ))

(defmethod jethexa_controller_interfaces::LegJoints
  (:init
   (&key
    ((:coxa __coxa) 0.0)
    ((:femur __femur) 0.0)
    ((:tibia __tibia) 0.0)
    ((:tarsus __tarsus) 0.0)
    )
   (send-super :init)
   (setq _coxa (float __coxa))
   (setq _femur (float __femur))
   (setq _tibia (float __tibia))
   (setq _tarsus (float __tarsus))
   self)
  (:coxa
   (&optional __coxa)
   (if __coxa (setq _coxa __coxa)) _coxa)
  (:femur
   (&optional __femur)
   (if __femur (setq _femur __femur)) _femur)
  (:tibia
   (&optional __tibia)
   (if __tibia (setq _tibia __tibia)) _tibia)
  (:tarsus
   (&optional __tarsus)
   (if __tarsus (setq _tarsus __tarsus)) _tarsus)
  (:serialization-length
   ()
   (+
    ;; float64 _coxa
    8
    ;; float64 _femur
    8
    ;; float64 _tibia
    8
    ;; float64 _tarsus
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _coxa
       (sys::poke _coxa (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _femur
       (sys::poke _femur (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _tibia
       (sys::poke _tibia (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _tarsus
       (sys::poke _tarsus (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _coxa
     (setq _coxa (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _femur
     (setq _femur (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _tibia
     (setq _tibia (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _tarsus
     (setq _tarsus (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get jethexa_controller_interfaces::LegJoints :md5sum-) "4281b159c18654b4920aa4a2c525621c")
(setf (get jethexa_controller_interfaces::LegJoints :datatype-) "jethexa_controller_interfaces/LegJoints")
(setf (get jethexa_controller_interfaces::LegJoints :definition-)
      "float64 coxa
float64 femur
float64 tibia
float64 tarsus
")



(provide :jethexa_controller_interfaces/LegJoints "4281b159c18654b4920aa4a2c525621c")


