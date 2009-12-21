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

(defmacro defentry-ut ((year month date hour minute second &optional time-zone)
                       (&key (title "")
                             (author "")
                             (category ""))
                       &body body)
  (let ((d (encode-universal-time
            second
            minute
            hour
            date
            month
            year
            time-zone)))
    `(defentry ,(format nil "/~A" d)
         (:title ,title
                 :author ,author
                 :category ,category
                 :date ,d)
       ,@body)))

#|
(load "blog.lisp")

(let ((x))
  (ele:map-class (lambda (y)
                   (format t "~&==============================================")
                   (push (print y) x)) 'entry))
|#

#|
(loop for (u p) on (mapcar (lambda (x)
                             (string-downcase (symbol-name x)))
                           '(komagata komagata1234
                             machida  machida1234
                             masuda   masuda1234
                             tahara   tahara1234
                             chiba    chiba1234))
      by #'cddr
      do (make-instance 'user :id u :password p))
(ele:map-class #'print 'user)
|#
