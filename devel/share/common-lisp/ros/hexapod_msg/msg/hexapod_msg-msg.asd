
(cl:in-package :asdf)

(defsystem "hexapod_msg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "allLegPosition" :depends-on ("_package_allLegPosition"))
    (:file "_package_allLegPosition" :depends-on ("_package"))
    (:file "bodyPos" :depends-on ("_package_bodyPos"))
    (:file "_package_bodyPos" :depends-on ("_package"))
    (:file "bodyTwist" :depends-on ("_package_bodyTwist"))
    (:file "_package_bodyTwist" :depends-on ("_package"))
    (:file "commands" :depends-on ("_package_commands"))
    (:file "_package_commands" :depends-on ("_package"))
    (:file "footPosition" :depends-on ("_package_footPosition"))
    (:file "_package_footPosition" :depends-on ("_package"))
    (:file "legAngle" :depends-on ("_package_legAngle"))
    (:file "_package_legAngle" :depends-on ("_package"))
  ))