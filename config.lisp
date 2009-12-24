(in-package :tech.actindi.net)

(defparameter *default-directory* (directory-namestring *load-truename*)
  "stylesheets, images, db ディレクトリを配置するディレクトリ。
db ディレクトリの下に blog.db という名前で SQLite3 のファイルが作成される。")

(defparameter *http-port* 8889 "HTTP のポート。")

(defparameter *swank-port* 4009 "SLIME のポート。")

(defvar *store-spec*
  `(:clsql (:sqlite3 ,
            (namestring (merge-pathnames "db/blog.db" *default-directory*)))))
