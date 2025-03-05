; Auto-generated. Do not edit!


(cl:in-package jethexa_controller_interfaces-msg)


;//! \htmlinclude State.msg.html

(cl:defclass <State> (roslisp-msg-protocol:ros-message)
  ((vin
    :reader vin
    :initarg :vin
    :type cl:float
    :initform 0.0))
)

(cl:defclass State (<State>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <State>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'State)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jethexa_controller_interfaces-msg:<State> is deprecated: use jethexa_controller_interfaces-msg:State instead.")))

(cl:ensure-generic-function 'vin-val :lambda-list '(m))
(cl:defmethod vin-val ((m <State>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-msg:vin-val is deprecated.  Use jethexa_controller_interfaces-msg:vin instead.")
  (vin m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <State>) ostream)
  "Serializes a message object of type '<State>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vin))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <State>) istream)
  "Deserializes a message object of type '<State>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vin) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<State>)))
  "Returns string type for a message object of type '<State>"
  "jethexa_controller_interfaces/State")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'State)))
  "Returns string type for a message object of type 'State"
  "jethexa_controller_interfaces/State")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<State>)))
  "Returns md5sum for a message object of type '<State>"
  "3baec60f92ec7ae546312dfac812d250")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'State)))
  "Returns md5sum for a message object of type 'State"
  "3baec60f92ec7ae546312dfac812d250")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<State>)))
  "Returns full string definition for message of type '<State>"
  (cl:format cl:nil "float32 vin~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'State)))
  "Returns full string definition for message of type 'State"
  (cl:format cl:nil "float32 vin~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <State>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <State>))
  "Converts a ROS message object to a list"
  (cl:list 'State
    (cl:cons ':vin (vin msg))
))
