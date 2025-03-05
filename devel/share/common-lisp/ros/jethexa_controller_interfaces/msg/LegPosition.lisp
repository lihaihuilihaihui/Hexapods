; Auto-generated. Do not edit!


(cl:in-package jethexa_controller_interfaces-msg)


;//! \htmlinclude LegPosition.msg.html

(cl:defclass <LegPosition> (roslisp-msg-protocol:ros-message)
  ((leg_id
    :reader leg_id
    :initarg :leg_id
    :type cl:fixnum
    :initform 0)
   (duration
    :reader duration
    :initarg :duration
    :type cl:float
    :initform 0.0)
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass LegPosition (<LegPosition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LegPosition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LegPosition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jethexa_controller_interfaces-msg:<LegPosition> is deprecated: use jethexa_controller_interfaces-msg:LegPosition instead.")))

(cl:ensure-generic-function 'leg_id-val :lambda-list '(m))
(cl:defmethod leg_id-val ((m <LegPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-msg:leg_id-val is deprecated.  Use jethexa_controller_interfaces-msg:leg_id instead.")
  (leg_id m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <LegPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-msg:duration-val is deprecated.  Use jethexa_controller_interfaces-msg:duration instead.")
  (duration m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <LegPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-msg:position-val is deprecated.  Use jethexa_controller_interfaces-msg:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LegPosition>) ostream)
  "Serializes a message object of type '<LegPosition>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'leg_id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LegPosition>) istream)
  "Deserializes a message object of type '<LegPosition>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'leg_id)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'duration) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LegPosition>)))
  "Returns string type for a message object of type '<LegPosition>"
  "jethexa_controller_interfaces/LegPosition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LegPosition)))
  "Returns string type for a message object of type 'LegPosition"
  "jethexa_controller_interfaces/LegPosition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LegPosition>)))
  "Returns md5sum for a message object of type '<LegPosition>"
  "6950a434049c35d066c094e6cf6b87eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LegPosition)))
  "Returns md5sum for a message object of type 'LegPosition"
  "6950a434049c35d066c094e6cf6b87eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LegPosition>)))
  "Returns full string definition for message of type '<LegPosition>"
  (cl:format cl:nil "uint8 leg_id~%float32 duration~%geometry_msgs/Point position~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LegPosition)))
  "Returns full string definition for message of type 'LegPosition"
  (cl:format cl:nil "uint8 leg_id~%float32 duration~%geometry_msgs/Point position~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LegPosition>))
  (cl:+ 0
     1
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LegPosition>))
  "Converts a ROS message object to a list"
  (cl:list 'LegPosition
    (cl:cons ':leg_id (leg_id msg))
    (cl:cons ':duration (duration msg))
    (cl:cons ':position (position msg))
))
