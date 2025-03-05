;; Auto-generated. Do not edit!


(when (boundp 'jethexa_controller_interfaces::State)
  (if (not (find-package "JETHEXA_CONTROLLER_INTERFACES"))
    (make-package "JETHEXA_CONTROLLER_INTERFACES"))
  (shadow 'State (find-package "JETHEXA_CONTROLLER_INTERFACES")))
(unless (find-package "JETHEXA_CONTROLLER_INTERFACES::STATE")
  (make-package "JETHEXA_CONTROLLER_INTERFACES::STATE"))

(in-package "ROS")
;;//! \htmlinclude State.msg.html


(defclass jethexa_controller_interfaces::State
  :super ros::object
  :slots (_vin ))

(defmethod jethexa_controller_interfaces::State
  (:init
   (&key
    ((:vin __vin) 0.0)
    )
   (send-super :init)
   (setq _vin (float __vin))
   self)
  (:vin
   (&optional __vin)
   (if __vin (setq _vin __vin)) _vin)
  (:serialization-length
   ()
   (+
    ;; float32 _vin
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _vin
       (sys::poke _vin (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _vin
     (setq _vin (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get jethexa_controller_interfaces::State :md5sum-) "3baec60f92ec7ae546312dfac812d250")
(setf (get jethexa_controller_interfaces::State :datatype-) "jethexa_controller_interfaces/State")
(setf (get jethexa_controller_interfaces::State :definition-)
      "float32 vin

")



(provide :jethexa_controller_interfaces/State "3baec60f92ec7ae546312dfac812d250")


