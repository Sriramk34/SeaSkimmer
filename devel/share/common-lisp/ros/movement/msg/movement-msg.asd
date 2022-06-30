
(cl:in-package :asdf)

(defsystem "movement-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "accgyro" :depends-on ("_package_accgyro"))
    (:file "_package_accgyro" :depends-on ("_package"))
    (:file "gpgga" :depends-on ("_package_gpgga"))
    (:file "_package_gpgga" :depends-on ("_package"))
    (:file "gpvtg" :depends-on ("_package_gpvtg"))
    (:file "_package_gpvtg" :depends-on ("_package"))
  ))