(in-package :tech.actindi.net)

(rucksack:with-transaction ()
  (clear-db)
  (rucksack:rucksack-do-class (entry 'entry)
    (let* ((date (entry-date entry))
           (post (make-post :path (entry-path entry)
                            :title (entry-title entry)
                            :body (entry-body entry)
                            :author (entry-author entry)
                            :date date
                            :category (entry-category entry))))
      (zadd :entries date post)
      (zadd (format nil "author:~a" (entry-author entry)) date post)))
  (rucksack:rucksack-do-class (user 'user)
    (! (format nil "user:~a" (user-id user))
       nil))                            ;パスワードは nil にしてログインできなくしておく
  (rucksack:rucksack-do-class (counter 'counter)
    (! :counter (counter-value counter))))
;;⇒ NIL
;;   T

(describe *db*)

(zrang :entries 0 0)

(zrang "author:tahara" 0 0)

(@ "user:tahara")
(! "user:tahara" "password")


(@ :counter)
