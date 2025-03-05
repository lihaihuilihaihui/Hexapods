; Auto-generated. Do not edit!


(cl:in-package jethexa_controller_interfaces-msg)


;//! \htmlinclude RunActionSet.msg.html

(cl:defclass <RunActionSet> (roslisp-msg-protocol:ros-message)
  ((action_path
    :reader action_path
    :initarg :action_path
    :type cl:string
    :initform "")
   (repeat
    :reader repeat
    :initarg :repeat
    :type cl:integer
    :initform 0)
   (interrupt
    :reader interrupt
    :initarg :interrupt
    :type cl:boolean
    :initform cl:nil)
   (default_path
    :reader default_path
    :initarg :default_path
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RunActionSet (<RunActionSet>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RunActionSet>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RunActionSet)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jethexa_controller_interfaces-msg:<RunActionSet> is deprecated: use jethexa_controller_interfaces-msg:RunActionSet instead.")))

(cl:ensure-generic-function 'action_path-val :lambda-list '(m))
(cl:defmethod action_path-val ((m <RunActionSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-msg:action_path-val is deprecated.  Use jethexa_controller_interfaces-msg:action_path instead.")
  (action_path m))

(cl:ensure-generic-function 'repeat-val :lambda-list '(m))
(cl:defmethod repeat-val ((m <RunActionSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-msg:repeat-val is deprecated.  Use jethexa_controller_interfaces-msg:repeat instead.")
  (repeat m))

(cl:ensure-generic-function 'interrupt-val :lambda-list '(m))
(cl:defmethod interrupt-val ((m <RunActionSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-msg:interrupt-val is deprecated.  Use jethexa_controller_interfaces-msg:interrupt instead.")
  (interrupt m))

(cl:ensure-generic-function 'default_path-val :lambda-list '(m))
(cl:defmethod default_path-val ((m <RunActionSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-msg:default_path-val is deprecated.  Use jethexa_controller_interfaces-msg:default_path instead.")
  (default_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RunActionSet>) ostream)
  "Serializes a message object of type '<RunActionSet>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action_path))
  (cl:let* ((signed (cl:slot-value msg 'repeat)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'interrupt) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'default_path) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RunActionSet>) istream)
  "Deserializes a message object of type '<RunActionSet>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'repeat) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'interrupt) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'default_path) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RunActionSet>)))
  "Returns string type for a message object of type '<RunActionSet>"
  "jethexa_controller_interfaces/RunActionSet")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RunActionSet)))
  "Returns string type for a message object of type 'RunActionSet"
  "jethexa_controller_interfaces/RunActionSet")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RunActionSet>)))
  "Returns md5sum for a message object of type '<RunActionSet>"
  "0956453a105a32316a59c54fb351ae16")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RunActionSet)))
  "Returns md5sum for a message object of type 'RunActionSet"
  "0956453a105a32316a59c54fb351ae16")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RunActionSet>)))
  "Returns full string definition for message of type '<RunActionSet>"
  (cl:format cl:nil "# Request~%string action_path~%int32 repeat~%bool interrupt~%bool default_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RunActionSet)))
  "Returns full string definition for message of type 'RunActionSet"
  (cl:format cl:nil "# Request~%string action_path~%int32 repeat~%bool interrupt~%bool default_path~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RunActionSet>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'action_path))
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RunActionSet>))
  "Converts a ROS message object to a list"
  (cl:list 'RunActionSet
    (cl:cons ':action_path (action_path msg))
    (cl:cons ':repeat (repeat msg))
    (cl:cons ':interrupt (interrupt msg))
    (cl:cons ':default_path (default_path msg))
))
