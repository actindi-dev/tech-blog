(asdf:defsystem :tech.actindi.net
  :version "0.0.1"
  :serial t
  :components ((:file "packages")
               (:file "config")
               (:file "models")
               (:file "tech.actindi.net"))
  :depends-on (:xyzzy-compat
               :cl-who
               :hunchentoot
               :kmrcl
               :elephant
               :ele-clsql
               :clsql-sqlite3))
