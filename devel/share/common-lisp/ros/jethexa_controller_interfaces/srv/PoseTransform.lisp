; Auto-generated. Do not edit!


(cl:in-package jethexa_controller_interfaces-srv)


;//! \htmlinclude PoseTransform-request.msg.html

(cl:defclass <PoseTransform-request> (roslisp-msg-protocol:ros-message)
  ((transform
    :reader transform
    :initarg :transform
    :type geometry_msgs-msg:Transform
    :initform (cl:make-instance 'geometry_msgs-msg:Transform))
   (duration
    :reader duration
    :initarg :duration
    :type cl:float
    :initform 0.0)
   (interrupt
    :reader interrupt
    :initarg :interrupt
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PoseTransform-request (<PoseTransform-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoseTransform-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoseTransform-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jethexa_controller_interfaces-srv:<PoseTransform-request> is deprecated: use jethexa_controller_interfaces-srv:PoseTransform-request instead.")))

(cl:ensure-generic-function 'transform-val :lambda-list '(m))
(cl:defmethod transform-val ((m <PoseTransform-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-srv:transform-val is deprecated.  Use jethexa_controller_interfaces-srv:transform instead.")
  (transform m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <PoseTransform-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-srv:duration-val is deprecated.  Use jethexa_controller_interfaces-srv:duration instead.")
  (duration m))

(cl:ensure-generic-function 'interrupt-val :lambda-list '(m))
(cl:defmethod interrupt-val ((m <PoseTransform-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-srv:interrupt-val is deprecated.  Use jethexa_controller_interfaces-srv:interrupt instead.")
  (interrupt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoseTransform-request>) ostream)
  "Serializes a message object of type '<PoseTransform-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'interrupt) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoseTransform-request>) istream)
  "Deserializes a message object of type '<PoseTransform-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'duration) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'interrupt) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoseTransform-request>)))
  "Returns string type for a service object of type '<PoseTransform-request>"
  "jethexa_controller_interfaces/PoseTransformRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoseTransform-request)))
  "Returns string type for a service object of type 'PoseTransform-request"
  "jethexa_controller_interfaces/PoseTransformRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoseTransform-request>)))
  "Returns md5sum for a message object of type '<PoseTransform-request>"
  "4cd99d259c76651e37d160a72014e6f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoseTransform-request)))
  "Returns md5sum for a message object of type 'PoseTransform-request"
  "4cd99d259c76651e37d160a72014e6f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoseTransform-request>)))
  "Returns full string definition for message of type '<PoseTransform-request>"
  (cl:format cl:nil "geometry_msgs/Transform transform~%float32 duration~%bool interrupt~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoseTransform-request)))
  "Returns full string definition for message of type 'PoseTransform-request"
  (cl:format cl:nil "geometry_msgs/Transform transform~%float32 duration~%bool interrupt~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoseTransform-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoseTransform-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PoseTransform-request
    (cl:cons ':transform (transform msg))
    (cl:cons ':duration (duration msg))
    (cl:cons ':interrupt (interrupt msg))
))
;//! \htmlinclude PoseTransform-response.msg.html

(cl:defclass <PoseTransform-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:integer
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass PoseTransform-response (<PoseTransform-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoseTransform-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoseTransform-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jethexa_controller_interfaces-srv:<PoseTransform-response> is deprecated: use jethexa_controller_interfaces-srv:PoseTransform-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <PoseTransform-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-srv:result-val is deprecated.  Use jethexa_controller_interfaces-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <PoseTransform-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-srv:message-val is deprecated.  Use jethexa_controller_interfaces-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoseTransform-response>) ostream)
  "Serializes a message object of type '<PoseTransform-response>"
  (cl:let* ((signed (cl:slot-value msg 'result)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoseTransform-response>) istream)
  "Deserializes a message object of type '<PoseTransform-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoseTransform-response>)))
  "Returns string type for a service object of type '<PoseTransform-response>"
  "jethexa_controller_interfaces/PoseTransformResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoseTransform-response)))
  "Returns string type for a service object of type 'PoseTransform-response"
  "jethexa_controller_interfaces/PoseTransformResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoseTransform-response>)))
  "Returns md5sum for a message object of type '<PoseTransform-response>"
  "4cd99d259c76651e37d160a72014e6f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoseTransform-response)))
  "Returns md5sum for a message object of type 'PoseTransform-response"
  "4cd99d259c76651e37d160a72014e6f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoseTransform-response>)))
  "Returns full string definition for message of type '<PoseTransform-response>"
  (cl:format cl:nil "int32 result~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoseTransform-response)))
  "Returns full string definition for message of type 'PoseTransform-response"
  (cl:format cl:nil "int32 result~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoseTransform-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoseTransform-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PoseTransform-response
    (cl:cons ':result (result msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PoseTransform)))
  'PoseTransform-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PoseTransform)))
  'PoseTransform-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoseTransform)))
  "Returns string type for a service object of type '<PoseTransform>"
  "jethexa_controller_interfaces/PoseTransform")