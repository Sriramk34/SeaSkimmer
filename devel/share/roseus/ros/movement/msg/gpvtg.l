;; Auto-generated. Do not edit!


(when (boundp 'movement::gpvtg)
  (if (not (find-package "MOVEMENT"))
    (make-package "MOVEMENT"))
  (shadow 'gpvtg (find-package "MOVEMENT")))
(unless (find-package "MOVEMENT::GPVTG")
  (make-package "MOVEMENT::GPVTG"))

(in-package "ROS")
;;//! \htmlinclude gpvtg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass movement::gpvtg
  :super ros::object
  :slots (_track _speedkm ))

(defmethod movement::gpvtg
  (:init
   (&key
    ((:track __track) (instance std_msgs::Float32 :init))
    ((:speedkm __speedkm) (instance std_msgs::Float32 :init))
    )
   (send-super :init)
   (setq _track __track)
   (setq _speedkm __speedkm)
   self)
  (:track
   (&rest __track)
   (if (keywordp (car __track))
       (send* _track __track)
     (progn
       (if __track (setq _track (car __track)))
       _track)))
  (:speedkm
   (&rest __speedkm)
   (if (keywordp (car __speedkm))
       (send* _speedkm __speedkm)
     (progn
       (if __speedkm (setq _speedkm (car __speedkm)))
       _speedkm)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float32 _track
    (send _track :serialization-length)
    ;; std_msgs/Float32 _speedkm
    (send _speedkm :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float32 _track
       (send _track :serialize s)
     ;; std_msgs/Float32 _speedkm
       (send _speedkm :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float32 _track
     (send _track :deserialize buf ptr-) (incf ptr- (send _track :serialization-length))
   ;; std_msgs/Float32 _speedkm
     (send _speedkm :deserialize buf ptr-) (incf ptr- (send _speedkm :serialization-length))
   ;;
   self)
  )

(setf (get movement::gpvtg :md5sum-) "637f5b710e0df4c3f674b10916974d40")
(setf (get movement::gpvtg :datatype-) "movement/gpvtg")
(setf (get movement::gpvtg :definition-)
      "std_msgs/Float32 track
std_msgs/Float32 speedkm

================================================================================
MSG: std_msgs/Float32
float32 data
")



(provide :movement/gpvtg "637f5b710e0df4c3f674b10916974d40")


