(in-package :tech.actindi.net)

(defun compute-path ()
  (format nil "/~d" (get-universal-time)))

(ele:defpclass entry ()
  ((path :initarg :path :initform (compute-path) :accessor entry-path
         :index t)
   (title :initarg :title :accessor entry-title)
   (body :initarg :body :accessor entry-body)
   (author :initarg :author :accessor entry-author :index t)
   (date :initarg :date :initform (get-universal-time) :accessor entry-date
         :index t)
   (category :initarg :category :accessor entry-category :index t))
  (:index t))

(defmethod print-object ((entry entry) stream)
  (print-unreadable-object (entry stream :type t :identity t)
    (format stream "~a ~a ~a"
            (entry-path entry)
            (entry-title entry)
            (if (< 20 (length (entry-body entry)))
                (subseq (entry-body entry) 0 20)
                (entry-body entry)))))


(defun get-all-entries ()
  (let (result)
    (ele:map-class (lambda (x)
                     (push x result))
                   'entry)
    result))
;;(setf (entry-title (car (get-all-entries))) "RSS はあああああ")

(defun get-entries (offset max)
  (let (result)
    (ele:map-inverted-index (lambda (k x)
                              (declare (ignore k))
                              (if (zerop offset)
                                  (progn
                                    (push x result)
                                    (when (zerop (decf max))
                                      (return-from get-entries
                                        (reverse result))))
                                  (decf offset)))
                            'entry
                            'path
                            :from-end t)
    (reverse result)))
;;(get-entries 0 3)

(defun count-entryes ()
  (let ((total 0))
    (ele:map-class (lambda (x) (declare (ignore x)) (incf total))
                   'entry :oids t)
    total))
;;(count-entryes)

(defun incf-counter ()
  (let ((counter (or (ele:get-from-root 'counter) 0)))
    (prog1 (incf counter)
           (ele:add-to-root 'counter counter))))
;; (incf-counter)

(ele:defpclass user ()
  ((id :initarg :id :accessor user-id :index t)
   (passowrd :initarg :password :accessor user-password))
  (:index t))

(defmethod print-object ((user user) stream)
  (print-unreadable-object (user stream :type t :identity t)
    (format stream "~a" (user-id user))))
