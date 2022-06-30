;; Auto-generated. Do not edit!


(when (boundp 'movement::gpgga)
  (if (not (find-package "MOVEMENT"))
    (make-package "MOVEMENT"))
  (shadow 'gpgga (find-package "MOVEMENT")))
(unless (find-package "MOVEMENT::GPGGA")
  (make-package "MOVEMENT::GPGGA"))

(in-package "ROS")
;;//! \htmlinclude gpgga.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass movement::gpgga
  :super ros::object
  :slots (_lat _long _hdop ))

(defmethod movement::gpgga
  (:init
   (&key
    ((:lat __lat) (instance std_msgs::Float32 :init))
    ((:long __long) (instance std_msgs::Float32 :init))
    ((:hdop __hdop) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _lat __lat)
   (setq _long __long)
   (setq _hdop __hdop)
   self)
  (:lat
   (&rest __lat)
   (if (keywordp (car __lat))
       (send* _lat __lat)
     (progn
       (if __lat (setq _lat (car __lat)))
       _lat)))
  (:long
   (&rest __long)
   (if (keywordp (car __long))
       (send* _long __long)
     (progn
       (if __long (setq _long (car __long)))
       _long)))
  (:hdop
   (&rest __hdop)
   (if (keywordp (car __hdop))
       (send* _hdop __hdop)
     (progn
       (if __hdop (setq _hdop (car __hdop)))
       _hdop)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float32 _lat
    (send _lat :serialization-length)
    ;; std_msgs/Float32 _long
    (send _long :serialization-length)
    ;; std_msgs/Float32 _hdop
    (send _hdop :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float32 _lat
       (send _lat :serialize s)
     ;; std_msgs/Float32 _long
       (send _long :serialize s)
     ;; std_msgs/Float32 _hdop
       (send _hdop :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float32 _lat
     (send _lat :deserialize buf ptr-) (incf ptr- (send _lat :serialization-length))
   ;; std_msgs/Float32 _long
     (send _long :deserialize buf ptr-) (incf ptr- (send _long :serialization-length))
   ;; std_msgs/Float32 _hdop
     (send _hdop :deserialize buf ptr-) (incf ptr- (send _hdop :serialization-length))
   ;;
   self)
  )

(setf (get movement::gpgga :md5sum-) "4fd45415d072c0bab0541d1fae62c5cc")
(setf (get movement::gpgga :datatype-) "movement/gpgga")
(setf (get movement::gpgga :definition-)
      "std_msgs/Float32 lat
std_msgs/Float32 long
std_msgs/Float32 hdop
================================================================================
MSG: std_msgs/Float32
float32 data
")



(provide :movement/gpgga "4fd45415d072c0bab0541d1fae62c5cc")


