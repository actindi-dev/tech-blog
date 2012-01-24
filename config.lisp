(in-package :tech.actindi.net)

(defparameter *default-directory*
  (pathname (directory-namestring #.(or *compile-file-truename* *load-truename*)))
  "stylesheets, images, db ディレクトリを配置するディレクトリ。")

(defparameter *http-port* 8889 "HTTP のポート。")

(defparameter *swank-port* 4009 "SLIME のポート。")

;; Rucksack をオープン
(unless rucksack:*rucksack*
  (setf rucksack:*rucksack* (rucksack:open-rucksack
                             (ensure-directories-exist
                              (merge-pathnames "rucksack/" *default-directory*)))))

#+nil
(setf rucksack:*rucksack* (prog1 nil (rucksack:close-rucksack rucksack:*rucksack*)))
