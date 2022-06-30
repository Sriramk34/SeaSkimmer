; Auto-generated. Do not edit!


(cl:in-package movement-msg)


;//! \htmlinclude gpgga.msg.html

(cl:defclass <gpgga> (roslisp-msg-protocol:ros-message)
  ((lat
    :reader lat
    :initarg :lat
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (long
    :reader long
    :initarg :long
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (hdop
    :reader hdop
    :initarg :hdop
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass gpgga (<gpgga>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gpgga>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gpgga)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name movement-msg:<gpgga> is deprecated: use movement-msg:gpgga instead.")))

(cl:ensure-generic-function 'lat-val :lambda-list '(m))
(cl:defmethod lat-val ((m <gpgga>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader movement-msg:lat-val is deprecated.  Use movement-msg:lat instead.")
  (lat m))

(cl:ensure-generic-function 'long-val :lambda-list '(m))
(cl:defmethod long-val ((m <gpgga>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader movement-msg:long-val is deprecated.  Use movement-msg:long instead.")
  (long m))

(cl:ensure-generic-function 'hdop-val :lambda-list '(m))
(cl:defmethod hdop-val ((m <gpgga>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader movement-msg:hdop-val is deprecated.  Use movement-msg:hdop instead.")
  (hdop m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gpgga>) ostream)
  "Serializes a message object of type '<gpgga>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lat) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'long) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'hdop) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gpgga>) istream)
  "Deserializes a message object of type '<gpgga>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lat) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'long) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'hdop) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gpgga>)))
  "Returns string type for a message object of type '<gpgga>"
  "movement/gpgga")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gpgga)))
  "Returns string type for a message object of type 'gpgga"
  "movement/gpgga")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gpgga>)))
  "Returns md5sum for a message object of type '<gpgga>"
  "4fd45415d072c0bab0541d1fae62c5cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gpgga)))
  "Returns md5sum for a message object of type 'gpgga"
  "4fd45415d072c0bab0541d1fae62c5cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gpgga>)))
  "Returns full string definition for message of type '<gpgga>"
  (cl:format cl:nil "std_msgs/Float32 lat~%std_msgs/Float32 long~%std_msgs/Float32 hdop~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gpgga)))
  "Returns full string definition for message of type 'gpgga"
  (cl:format cl:nil "std_msgs/Float32 lat~%std_msgs/Float32 long~%std_msgs/Float32 hdop~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gpgga>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lat))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'long))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'hdop))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gpgga>))
  "Converts a ROS message object to a list"
  (cl:list 'gpgga
    (cl:cons ':lat (lat msg))
    (cl:cons ':long (long msg))
    (cl:cons ':hdop (hdop msg))
))
