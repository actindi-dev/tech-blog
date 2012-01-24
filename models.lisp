(in-package :tech.actindi.net)

(defun compute-path ()
  (format nil "/~d" (get-universal-time)))

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


(defun get-all-entries ()
  (let (result)
    (rucksack:rucksack-do-slot (x 'entry 'date :order :ascending)
      (push x result))
    result))
;;(rucksack:with-transaction () (get-all-entries))

(defun get-entries (offset max)
  (let (result)
    (rucksack:rucksack-do-slot (x 'entry 'date :order :descending)
      (if (zerop offset)
          (progn
            (push x result)
            (when (zerop (decf max))
              (return-from get-entries
                (reverse result))))
          (decf offset)))
    (reverse result)))
;;(rucksack:with-transaction () (get-entries 0 3))

(defun get-entries-by-author (author offset max)
  (let (result)
    (rucksack:rucksack-do-slot (x 'entry 'date :order :descending)
      (when (string= author (entry-author x))
        (if (zerop offset)
            (progn
              (push x result)
              (when (zerop (decf max))
                (return-from get-entries-by-author
                  (reverse result))))
            (decf offset))))
    (reverse result)))
;;(rucksack:with-transaction () (get-entries-by-author "chiba" 0 3))

(defun count-entryes ()
  (let ((total 0))
    (rucksack:rucksack-do-class (x 'entry :id-only t)
      (declare (ignore x))
      (incf total))
    total))

(defun count-entryes-by-author (author)
  (let ((total 0))
    (rucksack:rucksack-do-slot (x 'entry 'author :equal author)
      (declare (ignore x))
      (incf total))
    total))
;;(rs:with-transaction () (count-entryes-by-author "chiba"))

(rucksack:with-transaction ()
  (defclass counter ()
    ((value :initform 91035 :accessor counter-value))
    (:index t)
    (:metaclass rucksack:persistent-class)))

(defun incf-counter ()
  (rucksack:rucksack-do-class (x 'counter)
    (return-from incf-counter
      (incf (counter-value x))))
  (incf (counter-value (make-instance 'counter))))
;; (rucksack:with-transaction () (incf-counter))

(rucksack:with-transaction ()
  (defclass user ()
    ((id :initarg :id :accessor user-id :index :string-index)
     (passowrd :initarg :password :accessor user-password))
    (:index t)
    (:metaclass rucksack:persistent-class)))

(defmethod print-object ((user user) stream)
  (print-unreadable-object (user stream :type t :identity t)
    (format stream "~a" (user-id user))))


(defun rucksack-find (class slot value)
  (rucksack:rucksack-do-slot (x class slot :equal value)
    (return-from rucksack-find x))
  nil)