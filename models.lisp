(in-package :tech.actindi.net)

(defun compute-path ()
  (format nil "/~d" (get-universal-time)))

(defstruct post
  (path (compute-path))
  title
  body
  (author "unknown")
  (date (get-universal-time))
  category)
