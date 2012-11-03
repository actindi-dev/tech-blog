(asdf:defsystem :tech.actindi.net
  :version "0.0.1"
  :serial t
  :components ((:file "packages")
               (:file "config")
               (:file "models")
               (:file "tech.actindi.net"))
  :depends-on (:xyzzy-compat
               :info.read-eval-print.html
               :hunchentoot
               :kmrcl
               :rucksack))
