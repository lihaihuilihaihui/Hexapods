; Auto-generated. Do not edit!


(cl:in-package jethexa_controller_interfaces-srv)


;//! \htmlinclude SimpleMoving-request.msg.html

(cl:defclass <SimpleMoving-request> (roslisp-msg-protocol:ros-message)
  ((moving
    :reader moving
    :initarg :moving
    :type cl:fixnum
    :initform 0)
   (repeat
    :reader repeat
    :initarg :repeat
    :type cl:integer
    :initform 0)
   (interrupt
    :reader interrupt
    :initarg :interrupt
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SimpleMoving-request (<SimpleMoving-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SimpleMoving-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SimpleMoving-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jethexa_controller_interfaces-srv:<SimpleMoving-request> is deprecated: use jethexa_controller_interfaces-srv:SimpleMoving-request instead.")))

(cl:ensure-generic-function 'moving-val :lambda-list '(m))
(cl:defmethod moving-val ((m <SimpleMoving-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-srv:moving-val is deprecated.  Use jethexa_controller_interfaces-srv:moving instead.")
  (moving m))

(cl:ensure-generic-function 'repeat-val :lambda-list '(m))
(cl:defmethod repeat-val ((m <SimpleMoving-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-srv:repeat-val is deprecated.  Use jethexa_controller_interfaces-srv:repeat instead.")
  (repeat m))

(cl:ensure-generic-function 'interrupt-val :lambda-list '(m))
(cl:defmethod interrupt-val ((m <SimpleMoving-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-srv:interrupt-val is deprecated.  Use jethexa_controller_interfaces-srv:interrupt instead.")
  (interrupt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SimpleMoving-request>) ostream)
  "Serializes a message object of type '<SimpleMoving-request>"
  (cl:let* ((signed (cl:slot-value msg 'moving)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'repeat)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'interrupt) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SimpleMoving-request>) istream)
  "Deserializes a message object of type '<SimpleMoving-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'moving) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'repeat) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'interrupt) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SimpleMoving-request>)))
  "Returns string type for a service object of type '<SimpleMoving-request>"
  "jethexa_controller_interfaces/SimpleMovingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimpleMoving-request)))
  "Returns string type for a service object of type 'SimpleMoving-request"
  "jethexa_controller_interfaces/SimpleMovingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SimpleMoving-request>)))
  "Returns md5sum for a message object of type '<SimpleMoving-request>"
  "54ab04357ebe8bc7a124e7d0526d9213")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SimpleMoving-request)))
  "Returns md5sum for a message object of type 'SimpleMoving-request"
  "54ab04357ebe8bc7a124e7d0526d9213")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SimpleMoving-request>)))
  "Returns full string definition for message of type '<SimpleMoving-request>"
  (cl:format cl:nil "# Request~%int8 moving~%int32   repeat~%bool interrupt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SimpleMoving-request)))
  "Returns full string definition for message of type 'SimpleMoving-request"
  (cl:format cl:nil "# Request~%int8 moving~%int32   repeat~%bool interrupt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SimpleMoving-request>))
  (cl:+ 0
     1
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SimpleMoving-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SimpleMoving-request
    (cl:cons ':moving (moving msg))
    (cl:cons ':repeat (repeat msg))
    (cl:cons ':interrupt (interrupt msg))
))
;//! \htmlinclude SimpleMoving-response.msg.html

(cl:defclass <SimpleMoving-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SimpleMoving-response (<SimpleMoving-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SimpleMoving-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SimpleMoving-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jethexa_controller_interfaces-srv:<SimpleMoving-response> is deprecated: use jethexa_controller_interfaces-srv:SimpleMoving-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SimpleMoving-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-srv:result-val is deprecated.  Use jethexa_controller_interfaces-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SimpleMoving-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-srv:message-val is deprecated.  Use jethexa_controller_interfaces-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SimpleMoving-response>) ostream)
  "Serializes a message object of type '<SimpleMoving-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SimpleMoving-response>) istream)
  "Deserializes a message object of type '<SimpleMoving-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SimpleMoving-response>)))
  "Returns string type for a service object of type '<SimpleMoving-response>"
  "jethexa_controller_interfaces/SimpleMovingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimpleMoving-response)))
  "Returns string type for a service object of type 'SimpleMoving-response"
  "jethexa_controller_interfaces/SimpleMovingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SimpleMoving-response>)))
  "Returns md5sum for a message object of type '<SimpleMoving-response>"
  "54ab04357ebe8bc7a124e7d0526d9213")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SimpleMoving-response)))
  "Returns md5sum for a message object of type 'SimpleMoving-response"
  "54ab04357ebe8bc7a124e7d0526d9213")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SimpleMoving-response>)))
  "Returns full string definition for message of type '<SimpleMoving-response>"
  (cl:format cl:nil "# Result~%int32 result~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SimpleMoving-response)))
  "Returns full string definition for message of type 'SimpleMoving-response"
  (cl:format cl:nil "# Result~%int32 result~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SimpleMoving-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SimpleMoving-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SimpleMoving-response
    (cl:cons ':result (result msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SimpleMoving)))
  'SimpleMoving-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SimpleMoving)))
  'SimpleMoving-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimpleMoving)))
  "Returns string type for a service object of type '<SimpleMoving>"
  "jethexa_controller_interfaces/SimpleMoving")