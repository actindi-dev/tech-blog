;;; The following lines added by ql:add-to-init-file:
(load (merge-pathnames "quicklisp/setup.lisp"
                       (user-homedir-pathname)))

(require :tech.actindi.net)

(tech.actindi.net:start-tech.actindi.net)

(loop (sleep 7))