; Auto-generated. Do not edit!


(cl:in-package jethexa_controller_interfaces-msg)


;//! \htmlinclude SetHead.msg.html

(cl:defclass <SetHead> (roslisp-msg-protocol:ros-message)
  ((rpy
    :reader rpy
    :initarg :rpy
    :type jethexa_controller_interfaces-msg:Euler
    :initform (cl:make-instance 'jethexa_controller_interfaces-msg:Euler))
   (duration
    :reader duration
    :initarg :duration
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetHead (<SetHead>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetHead>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetHead)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jethexa_controller_interfaces-msg:<SetHead> is deprecated: use jethexa_controller_interfaces-msg:SetHead instead.")))

(cl:ensure-generic-function 'rpy-val :lambda-list '(m))
(cl:defmethod rpy-val ((m <SetHead>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-msg:rpy-val is deprecated.  Use jethexa_controller_interfaces-msg:rpy instead.")
  (rpy m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <SetHead>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-msg:duration-val is deprecated.  Use jethexa_controller_interfaces-msg:duration instead.")
  (duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetHead>) ostream)
  "Serializes a message object of type '<SetHead>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rpy) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetHead>) istream)
  "Deserializes a message object of type '<SetHead>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rpy) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'duration) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetHead>)))
  "Returns string type for a message object of type '<SetHead>"
  "jethexa_controller_interfaces/SetHead")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetHead)))
  "Returns string type for a message object of type 'SetHead"
  "jethexa_controller_interfaces/SetHead")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetHead>)))
  "Returns md5sum for a message object of type '<SetHead>"
  "269ab51efb365ba39dc916c41e7ee5e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetHead)))
  "Returns md5sum for a message object of type 'SetHead"
  "269ab51efb365ba39dc916c41e7ee5e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetHead>)))
  "Returns full string definition for message of type '<SetHead>"
  (cl:format cl:nil "Euler rpy~%float64 duration~%~%~%================================================================================~%MSG: jethexa_controller_interfaces/Euler~%float64 roll~%float64 pitch~%float64 yaw~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetHead)))
  "Returns full string definition for message of type 'SetHead"
  (cl:format cl:nil "Euler rpy~%float64 duration~%~%~%================================================================================~%MSG: jethexa_controller_interfaces/Euler~%float64 roll~%float64 pitch~%float64 yaw~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetHead>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rpy))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetHead>))
  "Converts a ROS message object to a list"
  (cl:list 'SetHead
    (cl:cons ':rpy (rpy msg))
    (cl:cons ':duration (duration msg))
))
