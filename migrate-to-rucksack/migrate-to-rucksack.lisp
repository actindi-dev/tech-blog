(in-package :tech.actindi.net)

;;; entry
(with-open-file (out "/tmp/entry.lisp" :direction :output :if-exists :supersede)
  (write-line "(" out)
  (ele:map-class (lambda (x)
                   (write (list :path (entry-path x)
                                :title (entry-title x)
                                :body (entry-body x)
                                :author (entry-author x)
                                :date (entry-date x)
                                :category (entry-category x))
                          :stream out)
                   (terpri out))
                 'entry)
  (write-line ")" out))

;;; usre
(with-open-file (out "/tmp/user.lisp" :direction :output :if-exists :supersede)
  (write-line "(" out)
  (ele:map-class (lambda (x)
                   (write (list :id (user-id x)
                                :password (user-password x))
                          :stream out)
                   (terpri out))
                 'user)
  (write-line ")" out))

;;; access counter
(ele:get-from-root 'counter)
;;=> 91035
;;   T
