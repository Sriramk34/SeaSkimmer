; Auto-generated. Do not edit!


(cl:in-package movement-msg)


;//! \htmlinclude accgyro.msg.html

(cl:defclass <accgyro> (roslisp-msg-protocol:ros-message)
  ((accx
    :reader accx
    :initarg :accx
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (accy
    :reader accy
    :initarg :accy
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (accz
    :reader accz
    :initarg :accz
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (gyrox
    :reader gyrox
    :initarg :gyrox
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (gyroy
    :reader gyroy
    :initarg :gyroy
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (gyroz
    :reader gyroz
    :initarg :gyroz
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass accgyro (<accgyro>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <accgyro>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'accgyro)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name movement-msg:<accgyro> is deprecated: use movement-msg:accgyro instead.")))

(cl:ensure-generic-function 'accx-val :lambda-list '(m))
(cl:defmethod accx-val ((m <accgyro>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader movement-msg:accx-val is deprecated.  Use movement-msg:accx instead.")
  (accx m))

(cl:ensure-generic-function 'accy-val :lambda-list '(m))
(cl:defmethod accy-val ((m <accgyro>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader movement-msg:accy-val is deprecated.  Use movement-msg:accy instead.")
  (accy m))

(cl:ensure-generic-function 'accz-val :lambda-list '(m))
(cl:defmethod accz-val ((m <accgyro>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader movement-msg:accz-val is deprecated.  Use movement-msg:accz instead.")
  (accz m))

(cl:ensure-generic-function 'gyrox-val :lambda-list '(m))
(cl:defmethod gyrox-val ((m <accgyro>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader movement-msg:gyrox-val is deprecated.  Use movement-msg:gyrox instead.")
  (gyrox m))

(cl:ensure-generic-function 'gyroy-val :lambda-list '(m))
(cl:defmethod gyroy-val ((m <accgyro>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader movement-msg:gyroy-val is deprecated.  Use movement-msg:gyroy instead.")
  (gyroy m))

(cl:ensure-generic-function 'gyroz-val :lambda-list '(m))
(cl:defmethod gyroz-val ((m <accgyro>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader movement-msg:gyroz-val is deprecated.  Use movement-msg:gyroz instead.")
  (gyroz m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <accgyro>) ostream)
  "Serializes a message object of type '<accgyro>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'accx) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'accy) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'accz) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gyrox) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gyroy) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gyroz) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <accgyro>) istream)
  "Deserializes a message object of type '<accgyro>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'accx) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'accy) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'accz) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gyrox) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gyroy) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gyroz) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<accgyro>)))
  "Returns string type for a message object of type '<accgyro>"
  "movement/accgyro")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'accgyro)))
  "Returns string type for a message object of type 'accgyro"
  "movement/accgyro")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<accgyro>)))
  "Returns md5sum for a message object of type '<accgyro>"
  "38ea6143b493167fb723479a442558f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'accgyro)))
  "Returns md5sum for a message object of type 'accgyro"
  "38ea6143b493167fb723479a442558f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<accgyro>)))
  "Returns full string definition for message of type '<accgyro>"
  (cl:format cl:nil "std_msgs/Float32 accx~%std_msgs/Float32 accy~%std_msgs/Float32 accz~%std_msgs/Float32 gyrox~%std_msgs/Float32 gyroy~%std_msgs/Float32 gyroz~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'accgyro)))
  "Returns full string definition for message of type 'accgyro"
  (cl:format cl:nil "std_msgs/Float32 accx~%std_msgs/Float32 accy~%std_msgs/Float32 accz~%std_msgs/Float32 gyrox~%std_msgs/Float32 gyroy~%std_msgs/Float32 gyroz~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <accgyro>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'accx))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'accy))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'accz))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gyrox))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gyroy))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gyroz))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <accgyro>))
  "Converts a ROS message object to a list"
  (cl:list 'accgyro
    (cl:cons ':accx (accx msg))
    (cl:cons ':accy (accy msg))
    (cl:cons ':accz (accz msg))
    (cl:cons ':gyrox (gyrox msg))
    (cl:cons ':gyroy (gyroy msg))
    (cl:cons ':gyroz (gyroz msg))
))
