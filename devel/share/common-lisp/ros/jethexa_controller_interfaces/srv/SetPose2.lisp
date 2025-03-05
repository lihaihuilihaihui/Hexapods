; Auto-generated. Do not edit!


(cl:in-package jethexa_controller_interfaces-srv)


;//! \htmlinclude SetPose2-request.msg.html

(cl:defclass <SetPose2-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type (cl:vector geometry_msgs-msg:Point32)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point32 :initial-element (cl:make-instance 'geometry_msgs-msg:Point32)))
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

(cl:defclass SetPose2-request (<SetPose2-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPose2-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPose2-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jethexa_controller_interfaces-srv:<SetPose2-request> is deprecated: use jethexa_controller_interfaces-srv:SetPose2-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <SetPose2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-srv:pose-val is deprecated.  Use jethexa_controller_interfaces-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <SetPose2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-srv:duration-val is deprecated.  Use jethexa_controller_interfaces-srv:duration instead.")
  (duration m))

(cl:ensure-generic-function 'interrupt-val :lambda-list '(m))
(cl:defmethod interrupt-val ((m <SetPose2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-srv:interrupt-val is deprecated.  Use jethexa_controller_interfaces-srv:interrupt instead.")
  (interrupt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPose2-request>) ostream)
  "Serializes a message object of type '<SetPose2-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pose))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'interrupt) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPose2-request>) istream)
  "Deserializes a message object of type '<SetPose2-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pose)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'duration) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'interrupt) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPose2-request>)))
  "Returns string type for a service object of type '<SetPose2-request>"
  "jethexa_controller_interfaces/SetPose2Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPose2-request)))
  "Returns string type for a service object of type 'SetPose2-request"
  "jethexa_controller_interfaces/SetPose2Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPose2-request>)))
  "Returns md5sum for a message object of type '<SetPose2-request>"
  "595abd8c189b2179c98ec4c165f7d2cd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPose2-request)))
  "Returns md5sum for a message object of type 'SetPose2-request"
  "595abd8c189b2179c98ec4c165f7d2cd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPose2-request>)))
  "Returns full string definition for message of type '<SetPose2-request>"
  (cl:format cl:nil "geometry_msgs/Point32[] pose~%float32 duration~%bool interrupt~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPose2-request)))
  "Returns full string definition for message of type 'SetPose2-request"
  (cl:format cl:nil "geometry_msgs/Point32[] pose~%float32 duration~%bool interrupt~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPose2-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPose2-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPose2-request
    (cl:cons ':pose (pose msg))
    (cl:cons ':duration (duration msg))
    (cl:cons ':interrupt (interrupt msg))
))
;//! \htmlinclude SetPose2-response.msg.html

(cl:defclass <SetPose2-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetPose2-response (<SetPose2-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPose2-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPose2-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jethexa_controller_interfaces-srv:<SetPose2-response> is deprecated: use jethexa_controller_interfaces-srv:SetPose2-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetPose2-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-srv:result-val is deprecated.  Use jethexa_controller_interfaces-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetPose2-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-srv:message-val is deprecated.  Use jethexa_controller_interfaces-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPose2-response>) ostream)
  "Serializes a message object of type '<SetPose2-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPose2-response>) istream)
  "Deserializes a message object of type '<SetPose2-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPose2-response>)))
  "Returns string type for a service object of type '<SetPose2-response>"
  "jethexa_controller_interfaces/SetPose2Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPose2-response)))
  "Returns string type for a service object of type 'SetPose2-response"
  "jethexa_controller_interfaces/SetPose2Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPose2-response>)))
  "Returns md5sum for a message object of type '<SetPose2-response>"
  "595abd8c189b2179c98ec4c165f7d2cd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPose2-response)))
  "Returns md5sum for a message object of type 'SetPose2-response"
  "595abd8c189b2179c98ec4c165f7d2cd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPose2-response>)))
  "Returns full string definition for message of type '<SetPose2-response>"
  (cl:format cl:nil "int32 result~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPose2-response)))
  "Returns full string definition for message of type 'SetPose2-response"
  (cl:format cl:nil "int32 result~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPose2-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPose2-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPose2-response
    (cl:cons ':result (result msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetPose2)))
  'SetPose2-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetPose2)))
  'SetPose2-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPose2)))
  "Returns string type for a service object of type '<SetPose2>"
  "jethexa_controller_interfaces/SetPose2")