;; Auto-generated. Do not edit!


(when (boundp 'jethexa_controller_interfaces::LegsJoints)
  (if (not (find-package "JETHEXA_CONTROLLER_INTERFACES"))
    (make-package "JETHEXA_CONTROLLER_INTERFACES"))
  (shadow 'LegsJoints (find-package "JETHEXA_CONTROLLER_INTERFACES")))
(unless (find-package "JETHEXA_CONTROLLER_INTERFACES::LEGSJOINTS")
  (make-package "JETHEXA_CONTROLLER_INTERFACES::LEGSJOINTS"))

(in-package "ROS")
;;//! \htmlinclude LegsJoints.msg.html


(defclass jethexa_controller_interfaces::LegsJoints
  :super ros::object
  :slots (_leg ))

(defmethod jethexa_controller_interfaces::LegsJoints
  (:init
   (&key
    ((:leg __leg) (let (r) (dotimes (i 6) (push (instance jethexa_controller_interfaces::LegJoints :init) r)) r))
    )
   (send-super :init)
   (setq _leg __leg)
   self)
  (:leg
   (&rest __leg)
   (if (keywordp (car __leg))
       (send* _leg __leg)
     (progn
       (if __leg (setq _leg (car __leg)))
       _leg)))
  (:serialization-length
   ()
   (+
    ;; jethexa_controller_interfaces/LegJoints[6] _leg
    (apply #'+ (send-all _leg :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; jethexa_controller_interfaces/LegJoints[6] _leg
     (dolist (elem _leg)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; jethexa_controller_interfaces/LegJoints[6] _leg
   (dotimes (i 6)
     (send (elt _leg i) :deserialize buf ptr-) (incf ptr- (send (elt _leg i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get jethexa_controller_interfaces::LegsJoints :md5sum-) "77281f1f9c4cd29d21908d690db99185")
(setf (get jethexa_controller_interfaces::LegsJoints :datatype-) "jethexa_controller_interfaces/LegsJoints")
(setf (get jethexa_controller_interfaces::LegsJoints :definition-)
      "LegJoints[6] leg
================================================================================
MSG: jethexa_controller_interfaces/LegJoints
float64 coxa
float64 femur
float64 tibia
float64 tarsus
")



(provide :jethexa_controller_interfaces/LegsJoints "77281f1f9c4cd29d21908d690db99185")


