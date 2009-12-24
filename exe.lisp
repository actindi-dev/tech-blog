(eval-when (:compile-toplevel :load-toplevel :execute)
  (require :tech.actindi.net)
  (require :swank))

(defun main ()
  (let ((*invoke-debugger-hook*
         (lambda (condition hook)
           (declare (ignore hook))
           (format *error-output* "error: ~a~%" condition)
           (quit :unix-status 1))))
    (swank:create-server :port tech.actindi.net::*swank-port*
                         :dont-close t
                         :coding-system "utf-8-unix")
    (tech.actindi.net:start-tech.actindi.net)
    (loop (sleep 777))))

(save-lisp-and-die "tech-blog" :toplevel #'main :executable t)
;; sbcl --load exe.lisp