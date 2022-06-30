; Auto-generated. Do not edit!


(cl:in-package movement-msg)


;//! \htmlinclude gpvtg.msg.html

(cl:defclass <gpvtg> (roslisp-msg-protocol:ros-message)
  ((track
    :reader track
    :initarg :track
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (speedkm
    :reader speedkm
    :initarg :speedkm
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass gpvtg (<gpvtg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gpvtg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gpvtg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name movement-msg:<gpvtg> is deprecated: use movement-msg:gpvtg instead.")))

(cl:ensure-generic-function 'track-val :lambda-list '(m))
(cl:defmethod track-val ((m <gpvtg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader movement-msg:track-val is deprecated.  Use movement-msg:track instead.")
  (track m))

(cl:ensure-generic-function 'speedkm-val :lambda-list '(m))
(cl:defmethod speedkm-val ((m <gpvtg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader movement-msg:speedkm-val is deprecated.  Use movement-msg:speedkm instead.")
  (speedkm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gpvtg>) ostream)
  "Serializes a message object of type '<gpvtg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'track) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'speedkm) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gpvtg>) istream)
  "Deserializes a message object of type '<gpvtg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'track) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'speedkm) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gpvtg>)))
  "Returns string type for a message object of type '<gpvtg>"
  "movement/gpvtg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gpvtg)))
  "Returns string type for a message object of type 'gpvtg"
  "movement/gpvtg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gpvtg>)))
  "Returns md5sum for a message object of type '<gpvtg>"
  "637f5b710e0df4c3f674b10916974d40")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gpvtg)))
  "Returns md5sum for a message object of type 'gpvtg"
  "637f5b710e0df4c3f674b10916974d40")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gpvtg>)))
  "Returns full string definition for message of type '<gpvtg>"
  (cl:format cl:nil "std_msgs/Float32 track~%std_msgs/Float32 speedkm~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gpvtg)))
  "Returns full string definition for message of type 'gpvtg"
  (cl:format cl:nil "std_msgs/Float32 track~%std_msgs/Float32 speedkm~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gpvtg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'track))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'speedkm))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gpvtg>))
  "Converts a ROS message object to a list"
  (cl:list 'gpvtg
    (cl:cons ':track (track msg))
    (cl:cons ':speedkm (speedkm msg))
))
