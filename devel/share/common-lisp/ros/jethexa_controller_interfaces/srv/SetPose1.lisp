; Auto-generated. Do not edit!


(cl:in-package jethexa_controller_interfaces-srv)


;//! \htmlinclude SetPose1-request.msg.html

(cl:defclass <SetPose1-request> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type cl:string
    :initform "")
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

(cl:defclass SetPose1-request (<SetPose1-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPose1-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPose1-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jethexa_controller_interfaces-srv:<SetPose1-request> is deprecated: use jethexa_controller_interfaces-srv:SetPose1-request instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <SetPose1-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-srv:pose-val is deprecated.  Use jethexa_controller_interfaces-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <SetPose1-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-srv:duration-val is deprecated.  Use jethexa_controller_interfaces-srv:duration instead.")
  (duration m))

(cl:ensure-generic-function 'interrupt-val :lambda-list '(m))
(cl:defmethod interrupt-val ((m <SetPose1-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-srv:interrupt-val is deprecated.  Use jethexa_controller_interfaces-srv:interrupt instead.")
  (interrupt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPose1-request>) ostream)
  "Serializes a message object of type '<SetPose1-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'pose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'pose))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'interrupt) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPose1-request>) istream)
  "Deserializes a message object of type '<SetPose1-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pose) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'pose) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'duration) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'interrupt) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPose1-request>)))
  "Returns string type for a service object of type '<SetPose1-request>"
  "jethexa_controller_interfaces/SetPose1Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPose1-request)))
  "Returns string type for a service object of type 'SetPose1-request"
  "jethexa_controller_interfaces/SetPose1Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPose1-request>)))
  "Returns md5sum for a message object of type '<SetPose1-request>"
  "13028fae944c7d292e6d7a20d1f599d6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPose1-request)))
  "Returns md5sum for a message object of type 'SetPose1-request"
  "13028fae944c7d292e6d7a20d1f599d6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPose1-request>)))
  "Returns full string definition for message of type '<SetPose1-request>"
  (cl:format cl:nil "string pose~%float32 duration~%bool interrupt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPose1-request)))
  "Returns full string definition for message of type 'SetPose1-request"
  (cl:format cl:nil "string pose~%float32 duration~%bool interrupt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPose1-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'pose))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPose1-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPose1-request
    (cl:cons ':pose (pose msg))
    (cl:cons ':duration (duration msg))
    (cl:cons ':interrupt (interrupt msg))
))
;//! \htmlinclude SetPose1-response.msg.html

(cl:defclass <SetPose1-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetPose1-response (<SetPose1-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetPose1-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetPose1-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jethexa_controller_interfaces-srv:<SetPose1-response> is deprecated: use jethexa_controller_interfaces-srv:SetPose1-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetPose1-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-srv:result-val is deprecated.  Use jethexa_controller_interfaces-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetPose1-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-srv:message-val is deprecated.  Use jethexa_controller_interfaces-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetPose1-response>) ostream)
  "Serializes a message object of type '<SetPose1-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetPose1-response>) istream)
  "Deserializes a message object of type '<SetPose1-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetPose1-response>)))
  "Returns string type for a service object of type '<SetPose1-response>"
  "jethexa_controller_interfaces/SetPose1Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPose1-response)))
  "Returns string type for a service object of type 'SetPose1-response"
  "jethexa_controller_interfaces/SetPose1Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetPose1-response>)))
  "Returns md5sum for a message object of type '<SetPose1-response>"
  "13028fae944c7d292e6d7a20d1f599d6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetPose1-response)))
  "Returns md5sum for a message object of type 'SetPose1-response"
  "13028fae944c7d292e6d7a20d1f599d6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetPose1-response>)))
  "Returns full string definition for message of type '<SetPose1-response>"
  (cl:format cl:nil "int32 result~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetPose1-response)))
  "Returns full string definition for message of type 'SetPose1-response"
  (cl:format cl:nil "int32 result~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetPose1-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetPose1-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetPose1-response
    (cl:cons ':result (result msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetPose1)))
  'SetPose1-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetPose1)))
  'SetPose1-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetPose1)))
  "Returns string type for a service object of type '<SetPose1>"
  "jethexa_controller_interfaces/SetPose1")