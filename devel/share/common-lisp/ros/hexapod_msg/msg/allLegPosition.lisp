; Auto-generated. Do not edit!


(cl:in-package hexapod_msg-msg)


;//! \htmlinclude allLegPosition.msg.html

(cl:defclass <allLegPosition> (roslisp-msg-protocol:ros-message)
  ((position_LF
    :reader position_LF
    :initarg :position_LF
    :type hexapod_msg-msg:footPosition
    :initform (cl:make-instance 'hexapod_msg-msg:footPosition))
   (position_LM
    :reader position_LM
    :initarg :position_LM
    :type hexapod_msg-msg:footPosition
    :initform (cl:make-instance 'hexapod_msg-msg:footPosition))
   (position_LH
    :reader position_LH
    :initarg :position_LH
    :type hexapod_msg-msg:footPosition
    :initform (cl:make-instance 'hexapod_msg-msg:footPosition))
   (position_RF
    :reader position_RF
    :initarg :position_RF
    :type hexapod_msg-msg:footPosition
    :initform (cl:make-instance 'hexapod_msg-msg:footPosition))
   (position_RM
    :reader position_RM
    :initarg :position_RM
    :type hexapod_msg-msg:footPosition
    :initform (cl:make-instance 'hexapod_msg-msg:footPosition))
   (position_RH
    :reader position_RH
    :initarg :position_RH
    :type hexapod_msg-msg:footPosition
    :initform (cl:make-instance 'hexapod_msg-msg:footPosition)))
)

(cl:defclass allLegPosition (<allLegPosition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <allLegPosition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'allLegPosition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hexapod_msg-msg:<allLegPosition> is deprecated: use hexapod_msg-msg:allLegPosition instead.")))

(cl:ensure-generic-function 'position_LF-val :lambda-list '(m))
(cl:defmethod position_LF-val ((m <allLegPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hexapod_msg-msg:position_LF-val is deprecated.  Use hexapod_msg-msg:position_LF instead.")
  (position_LF m))

(cl:ensure-generic-function 'position_LM-val :lambda-list '(m))
(cl:defmethod position_LM-val ((m <allLegPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hexapod_msg-msg:position_LM-val is deprecated.  Use hexapod_msg-msg:position_LM instead.")
  (position_LM m))

(cl:ensure-generic-function 'position_LH-val :lambda-list '(m))
(cl:defmethod position_LH-val ((m <allLegPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hexapod_msg-msg:position_LH-val is deprecated.  Use hexapod_msg-msg:position_LH instead.")
  (position_LH m))

(cl:ensure-generic-function 'position_RF-val :lambda-list '(m))
(cl:defmethod position_RF-val ((m <allLegPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hexapod_msg-msg:position_RF-val is deprecated.  Use hexapod_msg-msg:position_RF instead.")
  (position_RF m))

(cl:ensure-generic-function 'position_RM-val :lambda-list '(m))
(cl:defmethod position_RM-val ((m <allLegPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hexapod_msg-msg:position_RM-val is deprecated.  Use hexapod_msg-msg:position_RM instead.")
  (position_RM m))

(cl:ensure-generic-function 'position_RH-val :lambda-list '(m))
(cl:defmethod position_RH-val ((m <allLegPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hexapod_msg-msg:position_RH-val is deprecated.  Use hexapod_msg-msg:position_RH instead.")
  (position_RH m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <allLegPosition>) ostream)
  "Serializes a message object of type '<allLegPosition>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_LF) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_LM) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_LH) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_RF) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_RM) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_RH) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <allLegPosition>) istream)
  "Deserializes a message object of type '<allLegPosition>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_LF) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_LM) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_LH) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_RF) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_RM) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_RH) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<allLegPosition>)))
  "Returns string type for a message object of type '<allLegPosition>"
  "hexapod_msg/allLegPosition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'allLegPosition)))
  "Returns string type for a message object of type 'allLegPosition"
  "hexapod_msg/allLegPosition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<allLegPosition>)))
  "Returns md5sum for a message object of type '<allLegPosition>"
  "edafd0829c6c7701af53a3a96fc11013")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'allLegPosition)))
  "Returns md5sum for a message object of type 'allLegPosition"
  "edafd0829c6c7701af53a3a96fc11013")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<allLegPosition>)))
  "Returns full string definition for message of type '<allLegPosition>"
  (cl:format cl:nil "hexapod_msg/footPosition position_LF~%hexapod_msg/footPosition position_LM~%hexapod_msg/footPosition position_LH~%hexapod_msg/footPosition position_RF~%hexapod_msg/footPosition position_RM~%hexapod_msg/footPosition position_RH~%~%================================================================================~%MSG: hexapod_msg/footPosition~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'allLegPosition)))
  "Returns full string definition for message of type 'allLegPosition"
  (cl:format cl:nil "hexapod_msg/footPosition position_LF~%hexapod_msg/footPosition position_LM~%hexapod_msg/footPosition position_LH~%hexapod_msg/footPosition position_RF~%hexapod_msg/footPosition position_RM~%hexapod_msg/footPosition position_RH~%~%================================================================================~%MSG: hexapod_msg/footPosition~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <allLegPosition>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_LF))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_LM))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_LH))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_RF))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_RM))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_RH))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <allLegPosition>))
  "Converts a ROS message object to a list"
  (cl:list 'allLegPosition
    (cl:cons ':position_LF (position_LF msg))
    (cl:cons ':position_LM (position_LM msg))
    (cl:cons ':position_LH (position_LH msg))
    (cl:cons ':position_RF (position_RF msg))
    (cl:cons ':position_RM (position_RM msg))
    (cl:cons ':position_RH (position_RH msg))
))
