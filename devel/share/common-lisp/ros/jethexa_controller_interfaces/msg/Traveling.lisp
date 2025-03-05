; Auto-generated. Do not edit!


(cl:in-package jethexa_controller_interfaces-msg)


;//! \htmlinclude Traveling.msg.html

(cl:defclass <Traveling> (roslisp-msg-protocol:ros-message)
  ((gait
    :reader gait
    :initarg :gait
    :type cl:fixnum
    :initform 0)
   (stride
    :reader stride
    :initarg :stride
    :type cl:float
    :initform 0.0)
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0)
   (direction
    :reader direction
    :initarg :direction
    :type cl:float
    :initform 0.0)
   (rotation
    :reader rotation
    :initarg :rotation
    :type cl:float
    :initform 0.0)
   (time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0)
   (steps
    :reader steps
    :initarg :steps
    :type cl:integer
    :initform 0)
   (relative_height
    :reader relative_height
    :initarg :relative_height
    :type cl:boolean
    :initform cl:nil)
   (interrupt
    :reader interrupt
    :initarg :interrupt
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Traveling (<Traveling>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Traveling>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Traveling)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jethexa_controller_interfaces-msg:<Traveling> is deprecated: use jethexa_controller_interfaces-msg:Traveling instead.")))

(cl:ensure-generic-function 'gait-val :lambda-list '(m))
(cl:defmethod gait-val ((m <Traveling>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-msg:gait-val is deprecated.  Use jethexa_controller_interfaces-msg:gait instead.")
  (gait m))

(cl:ensure-generic-function 'stride-val :lambda-list '(m))
(cl:defmethod stride-val ((m <Traveling>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-msg:stride-val is deprecated.  Use jethexa_controller_interfaces-msg:stride instead.")
  (stride m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <Traveling>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-msg:height-val is deprecated.  Use jethexa_controller_interfaces-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <Traveling>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-msg:direction-val is deprecated.  Use jethexa_controller_interfaces-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'rotation-val :lambda-list '(m))
(cl:defmethod rotation-val ((m <Traveling>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-msg:rotation-val is deprecated.  Use jethexa_controller_interfaces-msg:rotation instead.")
  (rotation m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <Traveling>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-msg:time-val is deprecated.  Use jethexa_controller_interfaces-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'steps-val :lambda-list '(m))
(cl:defmethod steps-val ((m <Traveling>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-msg:steps-val is deprecated.  Use jethexa_controller_interfaces-msg:steps instead.")
  (steps m))

(cl:ensure-generic-function 'relative_height-val :lambda-list '(m))
(cl:defmethod relative_height-val ((m <Traveling>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-msg:relative_height-val is deprecated.  Use jethexa_controller_interfaces-msg:relative_height instead.")
  (relative_height m))

(cl:ensure-generic-function 'interrupt-val :lambda-list '(m))
(cl:defmethod interrupt-val ((m <Traveling>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-msg:interrupt-val is deprecated.  Use jethexa_controller_interfaces-msg:interrupt instead.")
  (interrupt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Traveling>) ostream)
  "Serializes a message object of type '<Traveling>"
  (cl:let* ((signed (cl:slot-value msg 'gait)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'stride))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rotation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'steps)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'steps)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'steps)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'steps)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'relative_height) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'interrupt) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Traveling>) istream)
  "Deserializes a message object of type '<Traveling>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gait) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'stride) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'direction) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rotation) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'steps)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'steps)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'steps)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'steps)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'relative_height) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'interrupt) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Traveling>)))
  "Returns string type for a message object of type '<Traveling>"
  "jethexa_controller_interfaces/Traveling")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Traveling)))
  "Returns string type for a message object of type 'Traveling"
  "jethexa_controller_interfaces/Traveling")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Traveling>)))
  "Returns md5sum for a message object of type '<Traveling>"
  "6fc5a17f1d10ed31886179c4c279d006")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Traveling)))
  "Returns md5sum for a message object of type 'Traveling"
  "6fc5a17f1d10ed31886179c4c279d006")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Traveling>)))
  "Returns full string definition for message of type '<Traveling>"
  (cl:format cl:nil "int8 gait~%float32 stride~%float32 height~%float32 direction~%float32 rotation~%float32 time~%uint32 steps~%bool relative_height~%bool interrupt~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Traveling)))
  "Returns full string definition for message of type 'Traveling"
  (cl:format cl:nil "int8 gait~%float32 stride~%float32 height~%float32 direction~%float32 rotation~%float32 time~%uint32 steps~%bool relative_height~%bool interrupt~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Traveling>))
  (cl:+ 0
     1
     4
     4
     4
     4
     4
     4
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Traveling>))
  "Converts a ROS message object to a list"
  (cl:list 'Traveling
    (cl:cons ':gait (gait msg))
    (cl:cons ':stride (stride msg))
    (cl:cons ':height (height msg))
    (cl:cons ':direction (direction msg))
    (cl:cons ':rotation (rotation msg))
    (cl:cons ':time (time msg))
    (cl:cons ':steps (steps msg))
    (cl:cons ':relative_height (relative_height msg))
    (cl:cons ':interrupt (interrupt msg))
))
