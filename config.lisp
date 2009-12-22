(in-package :tech.actindi.net)

(defparameter *default-directory* (directory-namestring *load-truename*))

(defvar *store-spec*
  `(:clsql (:sqlite3 ,
            (namestring (merge-pathnames "db/blog.db" *default-directory*)))))
