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




(rucksack:with-transaction ()
  (defclass entry ()
    ((path :initarg :path :initform (compute-path) :accessor entry-path
           :index :string-index)
     (title :initarg :title :accessor entry-title)
     (body :initarg :body :accessor entry-body)
     (author :initarg :author :initform "unknown" :accessor entry-author
             :index :string-index)
     (date :initarg :date :initform (get-universal-time) :accessor entry-date
           :index :number-index)
     (category :initarg :category :accessor entry-category))
    (:index t)
    (:metaclass rucksack:persistent-class)))

(defmethod print-object ((entry entry) stream)
  (print-unreadable-object (entry stream :type t :identity t)
    (format stream "~a ~a ~a"
            (entry-path entry)
            (entry-title entry)
            (if (< 20 (length (entry-body entry)))
                (subseq (entry-body entry) 0 20)
                (entry-body entry)))))


(rucksack:with-transaction ()
  (defclass counter ()
    ((value :initform 91035 :accessor counter-value))
    (:index t)
    (:metaclass rucksack:persistent-class)))


(rucksack:with-transaction ()
  (defclass user ()
    ((id :initarg :id :accessor user-id :index :string-index)
     (passowrd :initarg :password :accessor user-password))
    (:index t)
    (:metaclass rucksack:persistent-class)))

(defmethod print-object ((user user) stream)
  (print-unreadable-object (user stream :type t :identity t)
    (format stream "~a" (user-id user))))
