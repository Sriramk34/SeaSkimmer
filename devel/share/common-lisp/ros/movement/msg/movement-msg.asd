
(cl:in-package :asdf)

(defsystem "movement-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "accgyro" :depends-on ("_package_accgyro"))
    (:file "_package_accgyro" :depends-on ("_package"))
  ))