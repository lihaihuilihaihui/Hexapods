; Auto-generated. Do not edit!


(cl:in-package jethexa_controller_interfaces-msg)


;//! \htmlinclude LegsJoints.msg.html

(cl:defclass <LegsJoints> (roslisp-msg-protocol:ros-message)
  ((leg
    :reader leg
    :initarg :leg
    :type (cl:vector jethexa_controller_interfaces-msg:LegJoints)
   :initform (cl:make-array 6 :element-type 'jethexa_controller_interfaces-msg:LegJoints :initial-element (cl:make-instance 'jethexa_controller_interfaces-msg:LegJoints))))
)

(cl:defclass LegsJoints (<LegsJoints>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LegsJoints>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LegsJoints)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jethexa_controller_interfaces-msg:<LegsJoints> is deprecated: use jethexa_controller_interfaces-msg:LegsJoints instead.")))

(cl:ensure-generic-function 'leg-val :lambda-list '(m))
(cl:defmethod leg-val ((m <LegsJoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jethexa_controller_interfaces-msg:leg-val is deprecated.  Use jethexa_controller_interfaces-msg:leg instead.")
  (leg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LegsJoints>) ostream)
  "Serializes a message object of type '<LegsJoints>"
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'leg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LegsJoints>) istream)
  "Deserializes a message object of type '<LegsJoints>"
  (cl:setf (cl:slot-value msg 'leg) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'leg)))
    (cl:dotimes (i 6)
    (cl:setf (cl:aref vals i) (cl:make-instance 'jethexa_controller_interfaces-msg:LegJoints))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LegsJoints>)))
  "Returns string type for a message object of type '<LegsJoints>"
  "jethexa_controller_interfaces/LegsJoints")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LegsJoints)))
  "Returns string type for a message object of type 'LegsJoints"
  "jethexa_controller_interfaces/LegsJoints")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LegsJoints>)))
  "Returns md5sum for a message object of type '<LegsJoints>"
  "77281f1f9c4cd29d21908d690db99185")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LegsJoints)))
  "Returns md5sum for a message object of type 'LegsJoints"
  "77281f1f9c4cd29d21908d690db99185")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LegsJoints>)))
  "Returns full string definition for message of type '<LegsJoints>"
  (cl:format cl:nil "LegJoints[6] leg~%================================================================================~%MSG: jethexa_controller_interfaces/LegJoints~%float64 coxa~%float64 femur~%float64 tibia~%float64 tarsus~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LegsJoints)))
  "Returns full string definition for message of type 'LegsJoints"
  (cl:format cl:nil "LegJoints[6] leg~%================================================================================~%MSG: jethexa_controller_interfaces/LegJoints~%float64 coxa~%float64 femur~%float64 tibia~%float64 tarsus~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LegsJoints>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'leg) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LegsJoints>))
  "Converts a ROS message object to a list"
  (cl:list 'LegsJoints
    (cl:cons ':leg (leg msg))
))
