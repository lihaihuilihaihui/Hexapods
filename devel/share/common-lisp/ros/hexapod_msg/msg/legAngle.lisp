; Auto-generated. Do not edit!


(cl:in-package hexapod_msg-msg)


;//! \htmlinclude legAngle.msg.html

(cl:defclass <legAngle> (roslisp-msg-protocol:ros-message)
  ((Angle1
    :reader Angle1
    :initarg :Angle1
    :type cl:float
    :initform 0.0)
   (Angle2
    :reader Angle2
    :initarg :Angle2
    :type cl:float
    :initform 0.0)
   (Angle3
    :reader Angle3
    :initarg :Angle3
    :type cl:float
    :initform 0.0))
)

(cl:defclass legAngle (<legAngle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <legAngle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'legAngle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hexapod_msg-msg:<legAngle> is deprecated: use hexapod_msg-msg:legAngle instead.")))

(cl:ensure-generic-function 'Angle1-val :lambda-list '(m))
(cl:defmethod Angle1-val ((m <legAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hexapod_msg-msg:Angle1-val is deprecated.  Use hexapod_msg-msg:Angle1 instead.")
  (Angle1 m))

(cl:ensure-generic-function 'Angle2-val :lambda-list '(m))
(cl:defmethod Angle2-val ((m <legAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hexapod_msg-msg:Angle2-val is deprecated.  Use hexapod_msg-msg:Angle2 instead.")
  (Angle2 m))

(cl:ensure-generic-function 'Angle3-val :lambda-list '(m))
(cl:defmethod Angle3-val ((m <legAngle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hexapod_msg-msg:Angle3-val is deprecated.  Use hexapod_msg-msg:Angle3 instead.")
  (Angle3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <legAngle>) ostream)
  "Serializes a message object of type '<legAngle>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Angle1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Angle2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'Angle3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <legAngle>) istream)
  "Deserializes a message object of type '<legAngle>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Angle1) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Angle2) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Angle3) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<legAngle>)))
  "Returns string type for a message object of type '<legAngle>"
  "hexapod_msg/legAngle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'legAngle)))
  "Returns string type for a message object of type 'legAngle"
  "hexapod_msg/legAngle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<legAngle>)))
  "Returns md5sum for a message object of type '<legAngle>"
  "c136d8648a895dda5df63c2c29230290")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'legAngle)))
  "Returns md5sum for a message object of type 'legAngle"
  "c136d8648a895dda5df63c2c29230290")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<legAngle>)))
  "Returns full string definition for message of type '<legAngle>"
  (cl:format cl:nil "float64 Angle1~%float64 Angle2~%float64 Angle3~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'legAngle)))
  "Returns full string definition for message of type 'legAngle"
  (cl:format cl:nil "float64 Angle1~%float64 Angle2~%float64 Angle3~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <legAngle>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <legAngle>))
  "Converts a ROS message object to a list"
  (cl:list 'legAngle
    (cl:cons ':Angle1 (Angle1 msg))
    (cl:cons ':Angle2 (Angle2 msg))
    (cl:cons ':Angle3 (Angle3 msg))
))
