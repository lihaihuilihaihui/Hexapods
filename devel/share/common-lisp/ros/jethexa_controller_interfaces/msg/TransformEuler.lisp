; Auto-generated. Do not edit!


(cl:in-package jethexa_controller_interfaces-msg)


;//! \htmlinclude TransformEuler.msg.html

(cl:defclass <TransformEuler> (roslisp-msg-protocol:ros-message)
  ((translation
    :reader translation
    :initarg :translation
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (rotation
    :reader rotation
    :initarg :rotation
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (duration
    :reader duration
    :initarg :duration
    :type cl:float
    :initform 0.0))
)

(cl:defclass TransformEuler (<TransformEuler>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TransformEuler>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TransformEuler)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jethexa_controller_interfaces-msg:<TransformEuler> is deprecated: use jethexa_controller_interfaces-msg:TransformEuler instead.")))

(cl:ensure-generic-function 'translation-val :lambda-list '(m))
(cl:defmethod translation-val ((m <TransformEuler>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-msg:translation-val is deprecated.  Use jethexa_controller_interfaces-msg:translation instead.")
  (translation m))

(cl:ensure-generic-function 'rotation-val :lambda-list '(m))
(cl:defmethod rotation-val ((m <TransformEuler>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-msg:rotation-val is deprecated.  Use jethexa_controller_interfaces-msg:rotation instead.")
  (rotation m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <TransformEuler>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-msg:duration-val is deprecated.  Use jethexa_controller_interfaces-msg:duration instead.")
  (duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TransformEuler>) ostream)
  "Serializes a message object of type '<TransformEuler>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'translation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rotation) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TransformEuler>) istream)
  "Deserializes a message object of type '<TransformEuler>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'translation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rotation) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TransformEuler>)))
  "Returns string type for a message object of type '<TransformEuler>"
  "jethexa_controller_interfaces/TransformEuler")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TransformEuler)))
  "Returns string type for a message object of type 'TransformEuler"
  "jethexa_controller_interfaces/TransformEuler")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TransformEuler>)))
  "Returns md5sum for a message object of type '<TransformEuler>"
  "2a328e1cf0b019f32b038faa157f5f4f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TransformEuler)))
  "Returns md5sum for a message object of type 'TransformEuler"
  "2a328e1cf0b019f32b038faa157f5f4f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TransformEuler>)))
  "Returns full string definition for message of type '<TransformEuler>"
  (cl:format cl:nil "geometry_msgs/Vector3 translation~%geometry_msgs/Vector3 rotation~%float64 duration~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TransformEuler)))
  "Returns full string definition for message of type 'TransformEuler"
  (cl:format cl:nil "geometry_msgs/Vector3 translation~%geometry_msgs/Vector3 rotation~%float64 duration~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TransformEuler>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'translation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rotation))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TransformEuler>))
  "Converts a ROS message object to a list"
  (cl:list 'TransformEuler
    (cl:cons ':translation (translation msg))
    (cl:cons ':rotation (rotation msg))
    (cl:cons ':duration (duration msg))
))
