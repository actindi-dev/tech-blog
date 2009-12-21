(in-package :tech.actindi.net)

(defmacro defentry (path (&key (title "")
                               (author "")
                               (date (get-universal-time))
                               (category ""))
                    &body body)
  `(make-instance 'entry
                  :path ,path
                  :title ,title
                  :author ,author
                  :date ,date
                  :category ,category
                  :body (with-html-output-to-string (out nil :indent t)
                          ,@body)))

(load "blog.lisp")

(let ((x))
  (ele:map-class (lambda (y)
                   (format t "~&==============================================")
                   (push (print y) x)) 'entry))
