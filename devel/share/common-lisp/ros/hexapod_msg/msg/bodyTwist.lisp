; Auto-generated. Do not edit!


(cl:in-package hexapod_msg-msg)


;//! \htmlinclude bodyTwist.msg.html

(cl:defclass <bodyTwist> (roslisp-msg-protocol:ros-message)
  ((angular_x
    :reader angular_x
    :initarg :angular_x
    :type cl:float
    :initform 0.0)
   (angular_y
    :reader angular_y
    :initarg :angular_y
    :type cl:float
    :initform 0.0)
   (angular_z
    :reader angular_z
    :initarg :angular_z
    :type cl:float
    :initform 0.0)
   (linear_x
    :reader linear_x
    :initarg :linear_x
    :type cl:float
    :initform 0.0)
   (linear_y
    :reader linear_y
    :initarg :linear_y
    :type cl:float
    :initform 0.0)
   (linear_z
    :reader linear_z
    :initarg :linear_z
    :type cl:float
    :initform 0.0))
)

(cl:defclass bodyTwist (<bodyTwist>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <bodyTwist>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'bodyTwist)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hexapod_msg-msg:<bodyTwist> is deprecated: use hexapod_msg-msg:bodyTwist instead.")))

(cl:ensure-generic-function 'angular_x-val :lambda-list '(m))
(cl:defmethod angular_x-val ((m <bodyTwist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hexapod_msg-msg:angular_x-val is deprecated.  Use hexapod_msg-msg:angular_x instead.")
  (angular_x m))

(cl:ensure-generic-function 'angular_y-val :lambda-list '(m))
(cl:defmethod angular_y-val ((m <bodyTwist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hexapod_msg-msg:angular_y-val is deprecated.  Use hexapod_msg-msg:angular_y instead.")
  (angular_y m))

(cl:ensure-generic-function 'angular_z-val :lambda-list '(m))
(cl:defmethod angular_z-val ((m <bodyTwist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hexapod_msg-msg:angular_z-val is deprecated.  Use hexapod_msg-msg:angular_z instead.")
  (angular_z m))

(cl:ensure-generic-function 'linear_x-val :lambda-list '(m))
(cl:defmethod linear_x-val ((m <bodyTwist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hexapod_msg-msg:linear_x-val is deprecated.  Use hexapod_msg-msg:linear_x instead.")
  (linear_x m))

(cl:ensure-generic-function 'linear_y-val :lambda-list '(m))
(cl:defmethod linear_y-val ((m <bodyTwist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hexapod_msg-msg:linear_y-val is deprecated.  Use hexapod_msg-msg:linear_y instead.")
  (linear_y m))

(cl:ensure-generic-function 'linear_z-val :lambda-list '(m))
(cl:defmethod linear_z-val ((m <bodyTwist>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hexapod_msg-msg:linear_z-val is deprecated.  Use hexapod_msg-msg:linear_z instead.")
  (linear_z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <bodyTwist>) ostream)
  "Serializes a message object of type '<bodyTwist>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angular_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angular_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angular_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'linear_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'linear_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'linear_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <bodyTwist>) istream)
  "Deserializes a message object of type '<bodyTwist>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_z) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_z) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<bodyTwist>)))
  "Returns string type for a message object of type '<bodyTwist>"
  "hexapod_msg/bodyTwist")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'bodyTwist)))
  "Returns string type for a message object of type 'bodyTwist"
  "hexapod_msg/bodyTwist")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<bodyTwist>)))
  "Returns md5sum for a message object of type '<bodyTwist>"
  "aebf5077596911a1b7b2a28523ac0efb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'bodyTwist)))
  "Returns md5sum for a message object of type 'bodyTwist"
  "aebf5077596911a1b7b2a28523ac0efb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<bodyTwist>)))
  "Returns full string definition for message of type '<bodyTwist>"
  (cl:format cl:nil "float64 angular_x~%float64 angular_y~%float64 angular_z~%float64 linear_x~%float64 linear_y~%float64 linear_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'bodyTwist)))
  "Returns full string definition for message of type 'bodyTwist"
  (cl:format cl:nil "float64 angular_x~%float64 angular_y~%float64 angular_z~%float64 linear_x~%float64 linear_y~%float64 linear_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <bodyTwist>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <bodyTwist>))
  "Converts a ROS message object to a list"
  (cl:list 'bodyTwist
    (cl:cons ':angular_x (angular_x msg))
    (cl:cons ':angular_y (angular_y msg))
    (cl:cons ':angular_z (angular_z msg))
    (cl:cons ':linear_x (linear_x msg))
    (cl:cons ':linear_y (linear_y msg))
    (cl:cons ':linear_z (linear_z msg))
))
