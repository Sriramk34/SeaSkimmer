;; Auto-generated. Do not edit!


(when (boundp 'movement::accgyro)
  (if (not (find-package "MOVEMENT"))
    (make-package "MOVEMENT"))
  (shadow 'accgyro (find-package "MOVEMENT")))
(unless (find-package "MOVEMENT::ACCGYRO")
  (make-package "MOVEMENT::ACCGYRO"))

(in-package "ROS")
;;//! \htmlinclude accgyro.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass movement::accgyro
  :super ros::object
  :slots (_accx _accy _accz _gyrox _gyroy _gyroz ))

(defmethod movement::accgyro
  (:init
   (&key
    ((:accx __accx) (instance std_msgs::Float32 :init))
    ((:accy __accy) (instance std_msgs::Float32 :init))
    ((:accz __accz) (instance std_msgs::Float32 :init))
    ((:gyrox __gyrox) (instance std_msgs::Float32 :init))
    ((:gyroy __gyroy) (instance std_msgs::Float32 :init))
    ((:gyroz __gyroz) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _accx __accx)
   (setq _accy __accy)
   (setq _accz __accz)
   (setq _gyrox __gyrox)
   (setq _gyroy __gyroy)
   (setq _gyroz __gyroz)
   self)
  (:accx
   (&rest __accx)
   (if (keywordp (car __accx))
       (send* _accx __accx)
     (progn
       (if __accx (setq _accx (car __accx)))
       _accx)))
  (:accy
   (&rest __accy)
   (if (keywordp (car __accy))
       (send* _accy __accy)
     (progn
       (if __accy (setq _accy (car __accy)))
       _accy)))
  (:accz
   (&rest __accz)
   (if (keywordp (car __accz))
       (send* _accz __accz)
     (progn
       (if __accz (setq _accz (car __accz)))
       _accz)))
  (:gyrox
   (&rest __gyrox)
   (if (keywordp (car __gyrox))
       (send* _gyrox __gyrox)
     (progn
       (if __gyrox (setq _gyrox (car __gyrox)))
       _gyrox)))
  (:gyroy
   (&rest __gyroy)
   (if (keywordp (car __gyroy))
       (send* _gyroy __gyroy)
     (progn
       (if __gyroy (setq _gyroy (car __gyroy)))
       _gyroy)))
  (:gyroz
   (&rest __gyroz)
   (if (keywordp (car __gyroz))
       (send* _gyroz __gyroz)
     (progn
       (if __gyroz (setq _gyroz (car __gyroz)))
       _gyroz)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float32 _accx
    (send _accx :serialization-length)
    ;; std_msgs/Float32 _accy
    (send _accy :serialization-length)
    ;; std_msgs/Float32 _accz
    (send _accz :serialization-length)
    ;; std_msgs/Float32 _gyrox
    (send _gyrox :serialization-length)
    ;; std_msgs/Float32 _gyroy
    (send _gyroy :serialization-length)
    ;; std_msgs/Float32 _gyroz
    (send _gyroz :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float32 _accx
       (send _accx :serialize s)
     ;; std_msgs/Float32 _accy
       (send _accy :serialize s)
     ;; std_msgs/Float32 _accz
       (send _accz :serialize s)
     ;; std_msgs/Float32 _gyrox
       (send _gyrox :serialize s)
     ;; std_msgs/Float32 _gyroy
       (send _gyroy :serialize s)
     ;; std_msgs/Float32 _gyroz
       (send _gyroz :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float32 _accx
     (send _accx :deserialize buf ptr-) (incf ptr- (send _accx :serialization-length))
   ;; std_msgs/Float32 _accy
     (send _accy :deserialize buf ptr-) (incf ptr- (send _accy :serialization-length))
   ;; std_msgs/Float32 _accz
     (send _accz :deserialize buf ptr-) (incf ptr- (send _accz :serialization-length))
   ;; std_msgs/Float32 _gyrox
     (send _gyrox :deserialize buf ptr-) (incf ptr- (send _gyrox :serialization-length))
   ;; std_msgs/Float32 _gyroy
     (send _gyroy :deserialize buf ptr-) (incf ptr- (send _gyroy :serialization-length))
   ;; std_msgs/Float32 _gyroz
     (send _gyroz :deserialize buf ptr-) (incf ptr- (send _gyroz :serialization-length))
   ;;
   self)
  )

(setf (get movement::accgyro :md5sum-) "38ea6143b493167fb723479a442558f8")
(setf (get movement::accgyro :datatype-) "movement/accgyro")
(setf (get movement::accgyro :definition-)
      "std_msgs/Float32 accx
std_msgs/Float32 accy
std_msgs/Float32 accz
std_msgs/Float32 gyrox
std_msgs/Float32 gyroy
std_msgs/Float32 gyroz

================================================================================
MSG: std_msgs/Float32
float32 data
")



(provide :movement/accgyro "38ea6143b493167fb723479a442558f8")


