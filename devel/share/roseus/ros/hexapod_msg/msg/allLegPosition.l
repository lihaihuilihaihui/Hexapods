;; Auto-generated. Do not edit!


(when (boundp 'hexapod_msg::allLegPosition)
  (if (not (find-package "HEXAPOD_MSG"))
    (make-package "HEXAPOD_MSG"))
  (shadow 'allLegPosition (find-package "HEXAPOD_MSG")))
(unless (find-package "HEXAPOD_MSG::ALLLEGPOSITION")
  (make-package "HEXAPOD_MSG::ALLLEGPOSITION"))

(in-package "ROS")
;;//! \htmlinclude allLegPosition.msg.html


(defclass hexapod_msg::allLegPosition
  :super ros::object
  :slots (_position_LF _position_LM _position_LH _position_RF _position_RM _position_RH ))

(defmethod hexapod_msg::allLegPosition
  (:init
   (&key
    ((:position_LF __position_LF) (instance hexapod_msg::footPosition :init))
    ((:position_LM __position_LM) (instance hexapod_msg::footPosition :init))
    ((:position_LH __position_LH) (instance hexapod_msg::footPosition :init))
    ((:position_RF __position_RF) (instance hexapod_msg::footPosition :init))
    ((:position_RM __position_RM) (instance hexapod_msg::footPosition :init))
    ((:position_RH __position_RH) (instance hexapod_msg::footPosition :init))
    )
   (send-super :init)
   (setq _position_LF __position_LF)
   (setq _position_LM __position_LM)
   (setq _position_LH __position_LH)
   (setq _position_RF __position_RF)
   (setq _position_RM __position_RM)
   (setq _position_RH __position_RH)
   self)
  (:position_LF
   (&rest __position_LF)
   (if (keywordp (car __position_LF))
       (send* _position_LF __position_LF)
     (progn
       (if __position_LF (setq _position_LF (car __position_LF)))
       _position_LF)))
  (:position_LM
   (&rest __position_LM)
   (if (keywordp (car __position_LM))
       (send* _position_LM __position_LM)
     (progn
       (if __position_LM (setq _position_LM (car __position_LM)))
       _position_LM)))
  (:position_LH
   (&rest __position_LH)
   (if (keywordp (car __position_LH))
       (send* _position_LH __position_LH)
     (progn
       (if __position_LH (setq _position_LH (car __position_LH)))
       _position_LH)))
  (:position_RF
   (&rest __position_RF)
   (if (keywordp (car __position_RF))
       (send* _position_RF __position_RF)
     (progn
       (if __position_RF (setq _position_RF (car __position_RF)))
       _position_RF)))
  (:position_RM
   (&rest __position_RM)
   (if (keywordp (car __position_RM))
       (send* _position_RM __position_RM)
     (progn
       (if __position_RM (setq _position_RM (car __position_RM)))
       _position_RM)))
  (:position_RH
   (&rest __position_RH)
   (if (keywordp (car __position_RH))
       (send* _position_RH __position_RH)
     (progn
       (if __position_RH (setq _position_RH (car __position_RH)))
       _position_RH)))
  (:serialization-length
   ()
   (+
    ;; hexapod_msg/footPosition _position_LF
    (send _position_LF :serialization-length)
    ;; hexapod_msg/footPosition _position_LM
    (send _position_LM :serialization-length)
    ;; hexapod_msg/footPosition _position_LH
    (send _position_LH :serialization-length)
    ;; hexapod_msg/footPosition _position_RF
    (send _position_RF :serialization-length)
    ;; hexapod_msg/footPosition _position_RM
    (send _position_RM :serialization-length)
    ;; hexapod_msg/footPosition _position_RH
    (send _position_RH :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; hexapod_msg/footPosition _position_LF
       (send _position_LF :serialize s)
     ;; hexapod_msg/footPosition _position_LM
       (send _position_LM :serialize s)
     ;; hexapod_msg/footPosition _position_LH
       (send _position_LH :serialize s)
     ;; hexapod_msg/footPosition _position_RF
       (send _position_RF :serialize s)
     ;; hexapod_msg/footPosition _position_RM
       (send _position_RM :serialize s)
     ;; hexapod_msg/footPosition _position_RH
       (send _position_RH :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; hexapod_msg/footPosition _position_LF
     (send _position_LF :deserialize buf ptr-) (incf ptr- (send _position_LF :serialization-length))
   ;; hexapod_msg/footPosition _position_LM
     (send _position_LM :deserialize buf ptr-) (incf ptr- (send _position_LM :serialization-length))
   ;; hexapod_msg/footPosition _position_LH
     (send _position_LH :deserialize buf ptr-) (incf ptr- (send _position_LH :serialization-length))
   ;; hexapod_msg/footPosition _position_RF
     (send _position_RF :deserialize buf ptr-) (incf ptr- (send _position_RF :serialization-length))
   ;; hexapod_msg/footPosition _position_RM
     (send _position_RM :deserialize buf ptr-) (incf ptr- (send _position_RM :serialization-length))
   ;; hexapod_msg/footPosition _position_RH
     (send _position_RH :deserialize buf ptr-) (incf ptr- (send _position_RH :serialization-length))
   ;;
   self)
  )

(setf (get hexapod_msg::allLegPosition :md5sum-) "edafd0829c6c7701af53a3a96fc11013")
(setf (get hexapod_msg::allLegPosition :datatype-) "hexapod_msg/allLegPosition")
(setf (get hexapod_msg::allLegPosition :definition-)
      "hexapod_msg/footPosition position_LF
hexapod_msg/footPosition position_LM
hexapod_msg/footPosition position_LH
hexapod_msg/footPosition position_RF
hexapod_msg/footPosition position_RM
hexapod_msg/footPosition position_RH

================================================================================
MSG: hexapod_msg/footPosition
float64 x
float64 y
float64 z
")



(provide :hexapod_msg/allLegPosition "edafd0829c6c7701af53a3a96fc11013")


