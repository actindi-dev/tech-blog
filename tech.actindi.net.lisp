(in-package :tech.actindi.net)

(defvar *errors* nil)
(defparameter *default-directory* (directory-namestring *load-truename*))

;; onlisp
(defun group (source n)
  "groups every n elements together into new sublists.
   e.g. (group '(1 a 2 b) 2) -> ((1 a) (2 b))"
  (when (zerop n) (error "zero length"))
  (labels ((rec (source acc)
	     (let ((rest (nthcdr n source)))
	       (if (consp rest)
		   (rec rest (cons (subseq source 0 n) acc))
		   (nreverse (cons source acc))))))
    (if source
	(rec source nil)
	nil)))


(defun number-to-kanji (num)
  (let ((digit   #("零" "一" "二" "三" "四" "五" "六" "七" "八" "九"))
        (subunit #("" "十" "百" "千"))
        (unit    #("" "万" "億" "兆")))
    (loop for i from 0
          initially (if (= num 0) (return (aref digit 0)))
          for (n m) = (multiple-value-list (floor num 10000)) ; 4 桁ずつ区切る
          until (and (= n 0) (= m 0))
          for value = (loop for j from 0 to 3 ; 位
                            for x = (mod (floor m (expt 10 j)) 10) ; 数字
                            when (/= x 0) ; 零千 零百 零十 対策
                            collect (format nil "~A~A"
                                            ; 一千 一百 一十 対策
                                            (if (and (= x 1) (> j 0)) "" (aref digit x))
                                            (aref subunit j)))
           when value appending (cons (aref unit i) value) into result
           do (setf num n)
           finally (return (apply #'concatenate (cons 'string (reverse result)))))))


#|
(defstruct (entry (:type list))
  path
  title
  body
  author
  date
  category
  )
|#


;; (defmacro defentry (path (&key (title "")
;;                                (author "")
;;                                (date (get-universal-time))
;;                                (category ""))
;;                     &body body)
;;   (let ((ent (gensym))
;;         (e (gensym)))
;;     `(let ((,ent (find ,path *all-entries* :key #'entry-path :test #'string=)))
;;        (cond (,ent (setf (entry-body ,ent)
;;                          (with-html-output-to-string (out nil :indent T) ,@body))
;;                    (setf (entry-title ,ent)
;;                          ,title)
;;                    (setf (entry-author ,ent)
;;                          ,author)
;;                    (setf (entry-date ,ent)
;;                          ,date)
;;                    (setf (entry-category ,ent)
;;                          ,category))
;;              (T (let ((,e (make-entry :path ,path
;;                                       :title ,title
;;                                       :author ,author
;;                                       :date ,date
;;                                       :category ,category
;;                                       :body (with-html-output-to-string (out nil :indent T) ,@body))))
;;                   (push ,e *all-entries*)
;;                   (define-easy-handler (,(intern path) :uri ,path) ()
;;                       (setf (content-type*) "text/html; charset=utf-8")
;;                       (with-html-output-to-string (out nil :indent T :prologue T)
;;                         ((:html :xmlns "http://www.w3.org/1999/xhtml")
;;                          (:head ((:meta :http-equiv "Content-Type" :content "text/html; charset=utf-8"))
;;                                 (:title "アクトインディ技術部隊報告書")
;;                                 ((:link :href "http://tech.actindi.net/stylesheets/reset.css" :rel "stylesheet" :type "text/css"))
;;                                 ((:link :href "http://tech.actindi.net/stylesheets/basic.css" :rel "stylesheet" :type "text/css"))
;;                                 ((:link :href "/rss.xml" :rel "alternate" :type "application/rss+xml" :title "Actindi Tech blog")))
;;                          (:body
;;                           ((:div :id "header")
;;                            ((:div :class "inner")
;;                             ((:div :class "twitter")
;;                              ((:h2 :class "design") "twitter")
;;                              (:p "こんにちは!!、こんにちは!!、こんにちは!!"))
;;                             ((:h1 :class "design_a")
;;                              ((:a :href "" :title "") "タイトル"))
;;                             ((:ol :id "bread_crumbs")
;;                            (:li ((:a :href "/") "home"))
;;                            #|(:li ((:a :|href| "" :|title| "") "home"))|#
;;                            #|(:li "1234")|#)))
;;                           ((:div :class "inner")
;;                          ((:div :id "columns")
;;                           ;; contents
;;                           ((:div :id "cotents")
;;                            ((lambda (x)
;;                               (with-html-output (out nil :indent T)
;;                                 ((:div :class "content")
;;                                  (:h2
;;                                   ((:a :href (entry-path x))
;;                                    (princ (entry-title x) out)))
;;                                  ((:dl :class "date")
;;                                   (:dd (format-date out
;;                                                     "%g%#e年%#m月%#d日(%v) %H時%M分%S秒"
;;                                                     (entry-date x)))
;;                                   (:dt "区分")
;;                                   (:dd (princ (entry-category x) out))
;;                                   (:dt "報告者: ")
;;                                   (:dd (princ (entry-author x) out)))
;;                                  (:p (princ (entry-body x) out))
;;                                  ((:p :class "to_top")
;;                                   ((:a :href "/") "トップページに戻る")))))
;;                             ,e)
;;                            ((:div :class "footer")
;;                             "<div id=\"disqus_thread\"></div><script type=\"text/javascript\" src=\"http://disqus.com/forums/actindi/embed.js\"></script><noscript><a href=\"http://actindi.disqus.com/?url=ref\">View the discussion thread.</a></noscript><a href=\"http://disqus.com\" class=\"dsq-brlink\">blog comments powered by <span class=\"logo-disqus\">Disqus</span></a>"))
;;                           ((:div :id "local_nav")
;;                            ((:div :id "counter")
;;                             (:dl
;;                              (:dt "本頁の来客数")
;;                              (:dd (format out
;;                                           "~A名"
;;                                           (number-to-kanji (incf-counter))))))
;;                            #|(:princ *top-member*)|#))
;;                          ;; ads
;;                          ((:div :id "foo_ads")
;;                           ((:div :id "categories")
;;                            ((:h2 :class "design") "カテゴリー")
;;                            (:ul
;;                             (mapc (lambda (x)
;;                                     (with-html-output (out nil :indent T)
;;                                       (:li ((:a :href (entry-path x))
;;                                             (princ (entry-title x) out)))))
;;                                   *all-entries*))
;;                            ((:p :class "to_actindi")
;;                             ((:a :href "" :title "") "アクトインディ")))
;;                           ;; poster
;;                           ((:div :class "poster")
;;                            ((:img :src "images/poster_01.jpg" :alt "aaaa")))))))))))))))
;; 
;; (defmacro defentry-ut ((year month date hour minute second &optional time-zone)
;;                        (&key (title "")
;;                              (author "")
;;                              (category ""))
;;                        &body body)
;;   (let ((d (encode-universal-time
;;             second
;;             minute
;;             hour
;;             date
;;             month
;;             year
;;             time-zone)))
;;     `(defentry ,(format nil "/~A" d)
;;          (:title ,title
;;                  :author ,author
;;                  :category ,category
;;                  :date ,d)
;;        ,@body)))

;; CSS
(define-easy-handler (reset.css :uri "/stylesheets/reset.css") ()
  (setf (content-type*) "text/css")
  (kmrcl:read-file-to-string
   (merge-pathnames "reset.css" *default-directory*)))

(define-easy-handler (basic.css :uri "/stylesheets/basic.css") ()
  (setf (content-type*) "text/css")
  (kmrcl:read-file-to-string
   (merge-pathnames "basic.css" *default-directory*)))


;; RSS
(define-easy-handler (|/rss.xml| :uri "/rss.xml") ()
  (setf (content-type*) "text/html; charset=utf-8")
  (with-html-output-to-string (out nil :indent T)
  (format out "<?xml version=\"1.0\" encoding=\"utf-8\"?>")
  ((:rss :version "2.0")
   (:channel
    (:title "アクトインディ技術部隊報告書")
    (:link "http://tech.actindi.net")
    (:description "アクトインディ技術部隊報告書")
    (format-date out "<lastBuildDate>%a, %d %b %Y %H:%M:%S +0900</lastBuildDate>")
    (:language "ja")
    (mapc (lambda (x)
            (with-html-output (out nil :indent T)
              (:item
               (:title (princ (entry-title x) out))
               (:link (format out "http://tech.actindi.net~A" (entry-path x)))
               (:description
                "<![CDATA[" (princ (entry-body x) out) "]]>")
               (format-date out "<pubDate>%a, %d %b %Y %H:%M:%S +0900</pubDate>" (entry-date x)))))
          (get-all-entries))))))

(setq *dispatch-table* '(DISPATCH-EASY-HANDLERS DEFAULT-DISPATCHER))

;; メンバー一覧
(defparameter *top-member*
  (with-html-output-to-string (out nil :indent T)
    ((:div :id "member")
     ((:h2 :class "design") "メンバー一覧")
      ((:p :class "title")
       "アクトインディ技師部隊員名簿")
     (:ul
      (:li ((:a :href "/komagata") "komagata"))
      (:li ((:a :href "/machida") "machida"))
      (:li ((:a :href "/masuda") "masuda"))
      (:li ((:a :href "/tahara") "tahara"))
      (:li ((:a :href "/chiba") "chiba")))
     ((:p :class "to_actindi")
      ((:a :href "http://www.actindi.com")
       "アクトインディへ")))))

;; お知らせ
(defparameter *block-news*
  (with-html-output-to-string (out nil :indent T)
    ((:div :id "news")
     (:h2 "技師部隊からの" :br
          "お知らせ")
     (:p "インフルエンザに気をつけて頑張っています"))))


;; テンプレート
(defmacro with-defalut-template (&body contents)
  `(with-html-output-to-string (out nil :indent T :prologue T)
     ((:html :xmlns "http://www.w3.org/1999/xhtml")
      (:head ((:meta :http-equiv "Content-Type" :content "text/html; charset=utf-8"))
             (:title "アクトインディ技術部隊報告書")
             ((:link :href "http://tech.actindi.net/stylesheets/reset.css" :rel "stylesheet" :type "text/css"))
             ((:link :href "http://tech.actindi.net/stylesheets/basic.css" :rel "stylesheet" :type "text/css"))
             #|((:link :href "/stylesheets/reset.css" :rel "stylesheet" :type "text/css"))|#
             #|((:link :href "/stylesheets/basic.css" :rel "stylesheet" :type "text/css"))|#
             ((:link :href "/rss.xml" :rel "alternate" :type "application/rss+xml" :title "Actindi Tech blog")))
      (:body
       ((:div :id "header")
        ((:div :class "inner")
         ((:div :class "twitter")
          ((:h2 :class "design") "twitter")
          (:p "こんにちは!!、こんにちは!!、こんにちは!!"))
         ((:h1 :class "design_a")
          ((:a :href "" :title "") "タイトル"))
         ((:ol :id "bread_crumbs")
          (:li ((:a :href "/") "home")))))
       ((:div :class "inner")
        ((:div :id "columns")
         ((:div :id "cotents")
          ;; content
          ,@contents
          ((:div :class "footer")))
         ((:div :id "local_nav")
          ;; news
          (princ *block-news* out)
          ((:div :id "counter")
           (:dl
            (:dt "本頁の来客数")
            (:dd (format out "~A名"
                         (number-to-kanji (incf-counter))))))
          (princ *top-member* out)))
        ;; ads
        ((:div :id "foo_ads")
         ((:div :id "categories")
          ((:h2 :class "design") "カテゴリー")
          (:ul
           (mapc (lambda (x)
                   (with-html-output (out nil :indent T)
                     (:li ((:a :href (entry-path x))
                           (princ (entry-title x) out)))))
                 (get-all-entries)))
          ((:p :class "to_actindi")
           ((:a :href "" :title "") "アクトインディ")))
         ((:div :class "poster")
          ((:img :src "images/poster_01.jpg" :alt "aaaa")))
         ((:script :type "text/javascript")
          "//<![CDATA["
          "(function() {
		var links = document.getElementsByTagName('a');
		var query = '?';
		for(var i = 0; i < links.length; i++) {
			if(links[i].href.indexOf('#disqus_thread') >= 0) {
				query += 'url' + i + '=' + encodeURIComponent(links[i].href) + '&';
			}
		}
		document.write('<script charset=\"utf-8\" type=\"text/javascript\" src=\"http://disqus.com/forums/actindi/get_num_replies.js' + query + '\"></' + 'script>');
	})();"
          "//]]>"))))
      ((:div :id "footer")
       ((:p :class "center") "Copyright &copy; 2009 アクトインディ All rights reserved.")))))

;; テンプレ
#|(defmacro define-actindi.net-template ((name path) (&rest args) contents)
  `(define-easy-handler (,name :uri ,path) ,args
     (with-html-output-to-string (out nil :indent T :prologue T)
       ((:html :xmlns "http://www.w3.org/1999/xhtml")
        (:head ((:meta :http-equiv "Content-Type" :content "text/html; charset=utf-8"))
               (:title "アクトインディ技術部隊報告書")
               ((:link :href "http://tech.actindi.net/stylesheets/reset.css" :rel "stylesheet" :type "text/css"))
               ((:link :href "http://tech.actindi.net/stylesheets/basic.css" :rel "stylesheet" :type "text/css"))
               #|((:link :href "/stylesheets/reset.css" :rel "stylesheet" :type "text/css"))|#
               #|((:link :href "/stylesheets/basic.css" :rel "stylesheet" :type "text/css"))|#
               ((:link :href "/rss.xml" :rel "alternate" :type "application/rss+xml" :title "Actindi Tech blog")))
        (:body
         ((:div :id "header")
          ((:div :class "inner")
           ((:div :class "twitter")
            ((:h2 :class "design") "twitter")
            (:p "こんにちは!!、こんにちは!!、こんにちは!!"))
           ((:h1 :class "design_a")
            ((:a :href "" :title "") "タイトル"))
           ((:ol :id "bread_crumbs")
            (:li ((:a :href "/") "home")))))
         ((:div :class "inner")
          ((:div :id "columns")
           ((:div :id "cotents")
            ;; content
            ,contents
            ((:div :class "footer")))
           ((:div :id "local_nav")
            ;; news
            (princ *block-news* out)
            ((:div :id "counter")
             (:dl
              (:dt "本頁の来客数")
              (:dd (format out
                           "~A名"
                           (number-to-kanji (incf-counter))))))
            (princ *top-member* out)))
          ;; ads
          ((:div :id "foo_ads")
           ((:div :id "categories")
            ((:h2 :class "design") "カテゴリー")
            (:ul
             (mapc (lambda (x)
                     (with-html-output (out nil :indent T)
                       (:li ((:a :href (entry-path x))
                             (princ (entry-title x) out)))))
                   (get-all-entries)))
            ((:p :class "to_actindi")
             ((:a :href "" :title "") "アクトインディ")))
           ((:div :class "poster")
            ((:img :src "images/poster_01.jpg" :alt "aaaa")))
           ((:script :type "text/javascript")
            "//<![CDATA["
            "(function() {
		var links = document.getElementsByTagName('a');
		var query = '?';
		for(var i = 0; i < links.length; i++) {
			if(links[i].href.indexOf('#disqus_thread') >= 0) {
				query += 'url' + i + '=' + encodeURIComponent(links[i].href) + '&';
			}
		}
		document.write('<script charset=\"utf-8\" type=\"text/javascript\" src=\"http://disqus.com/forums/actindi/get_num_replies.js' + query + '\"></' + 'script>');
	})();"
            "//]]>"))))
        ((:div :id "footer")
         ((:p :class "center") "Copyright &copy; 2009 アクトインディ All rights reserved."))))))|#

(defmacro define-actindi.net-template ((name path) (&rest args) contents)
  `(define-easy-handler (,name :uri ,path) ,args
     (with-defalut-template ,contents)))

;; トップページ
(define-actindi.net-template (root "/") (#|page|#)
  (mapc (lambda (x)
          (with-html-output (out nil :indent 2)
            ((:div :class "content")
             (:h2
              ((:a :href (entry-path x))
               (princ (entry-title x) out))
              )
             ((:dl :class "date")
              (:dd (format-date out "%g%#e年%#m月%#d日(%v) %H時%M分%S秒"
                                (entry-date x)))
              (:dt "区分")
              (:dd (princ (entry-category x) out))
              (:dt "報告者: ")
              (:dd (princ (entry-author x) out))
              )
             #|(:p (princ (with-output-to-string (*standard-output*)
                          (describe page))
                        out))|#
             (:p (princ (entry-body x) out))
             ((:p :class "to_top")
              ((:a :href (format nil "~A#disqus_thread" (entry-path x)))
               ">View Comments")
              "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
              ((:a :href "" :title "") "このページの上へ戻る")))))
        (nth 0
             (GROUP (get-all-entries) 10))))


(defun make-member-page (name)
  (EVAL
   `(define-actindi.net-template (,(intern name) ,(format nil "/~A" name)) ()
        (mapc (lambda (x)
                (with-html-output (out nil :indent T)
                  ((:div :class "content")
                   (:h2
                    ((:a :href (entry-path x))
                     (princ (entry-title x) out))
                    )
                   ((:dl :class "date")
                    (:dd (format-date out "%g%#e年%#m月%#d日(%v) %H時%M分%S秒"
                                      (entry-date x)))
                    (:dt "区分")
                    (:dd (princ (entry-category x) out))
                    (:dt "報告者: ")
                    (:dd (princ (entry-author x) out))
                    )
                   (:p (princ (entry-body x) out))
                   ((:p :class "to_top")
                    ((:a :href (format nil "~A#disqus_thread" (entry-path x)))
                     ">View Comments")
                    "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
                    ((:a :href "" :title "") "このページの上へ戻る")))))
              (remove-if-not (lambda (x)
                               (string= ,name (entry-author x)))
                             (get-all-entries))))))

(mapc (lambda (n)
        (make-member-page n))
      '("komagata" "machida" "tahara" "masuda" "chiba"))


(defvar *show-entry-dispatcher*
  (hunchentoot:create-regex-dispatcher "/[0-9]+$" 'show-entry))

(pushnew *show-entry-dispatcher* hunchentoot:*dispatch-table*)

(defun show-entry ()
  (let ((entry (ele:get-instance-by-value 'entry 'path (hunchentoot:request-uri*))))
    (setf (content-type*) "text/html; charset=utf-8")
    (with-html-output-to-string (out nil :indent T :prologue T)
      ((:html :xmlns "http://www.w3.org/1999/xhtml")
       (:head ((:meta :http-equiv "Content-Type" :content "text/html; charset=utf-8"))
              (:title "アクトインディ技術部隊報告書")
              ((:link :href "http://tech.actindi.net/stylesheets/reset.css" :rel "stylesheet" :type "text/css"))
              ((:link :href "http://tech.actindi.net/stylesheets/basic.css" :rel "stylesheet" :type "text/css"))
              ((:link :href "/rss.xml" :rel "alternate" :type "application/rss+xml" :title "Actindi Tech blog")))
       (:body
        ((:div :id "header")
         ((:div :class "inner")
          ((:div :class "twitter")
           ((:h2 :class "design") "twitter")
           (:p "こんにちは!!、こんにちは!!、こんにちは!!"))
          ((:h1 :class "design_a")
           ((:a :href "" :title "") "タイトル"))
          ((:ol :id "bread_crumbs")
           (:li ((:a :href "/") "home"))
           #|(:li ((:a :|href| "" :|title| "") "home"))|#
           #|(:li "1234")|#)))
        ((:div :class "inner")
         ((:div :id "columns")
          ;; contents
          ((:div :id "cotents")
           ((lambda (x)
              (with-html-output (out nil :indent T)
                ((:div :class "content")
                 (:h2
                  ((:a :href (entry-path x))
                   (princ (entry-title x) out)))
                 ((:dl :class "date")
                  (:dd (format-date out
                                    "%g%#e年%#m月%#d日(%v) %H時%M分%S秒"
                                    (entry-date x)))
                  (:dt "区分")
                  (:dd (princ (entry-category x) out))
                  (:dt "報告者: ")
                  (:dd (princ (entry-author x) out)))
                 (:p (princ (entry-body x) out))
                 ((:p :class "to_top")
                  ((:a :href "/") "トップページに戻る")))))
            entry)
           ((:div :class "footer")
            "<div id=\"disqus_thread\"></div><script type=\"text/javascript\" src=\"http://disqus.com/forums/actindi/embed.js\"></script><noscript><a href=\"http://actindi.disqus.com/?url=ref\">View the discussion thread.</a></noscript><a href=\"http://disqus.com\" class=\"dsq-brlink\">blog comments powered by <span class=\"logo-disqus\">Disqus</span></a>"))
          ((:div :id "local_nav")
           ((:div :id "counter")
            (:dl
             (:dt "本頁の来客数")
             (:dd (format out
                          "~A名"
                          (number-to-kanji (incf-counter))))))
           #|(:princ *top-member*)|#))
         ;; ads
         ((:div :id "foo_ads")
          ((:div :id "categories")
           ((:h2 :class "design") "カテゴリー")
           (:ul
            (mapc (lambda (x)
                    (with-html-output (out nil :indent T)
                      (:li ((:a :href (entry-path x))
                            (princ (entry-title x) out)))))
                  (get-all-entries)))
           ((:p :class "to_actindi")
            ((:a :href "" :title "") "アクトインディ")))
          ;; poster
          ((:div :class "poster")
           ((:img :src "images/poster_01.jpg" :alt "aaaa"))))))))))

(define-actindi.net-template (login "/login") (user)
  (with-html-output (out nil :indent 2)
    ((:div :class "content")
     (:h2 "ログイン")
     (if *errors*
         (format out "~a" *errors*))
     ((:form :method "POST" :action "/auth")
      (:div
       ((:label :for "user") "ユーザID:")
       ((:input :type "text" :name "user" :value user)))
      (:div
       ((:label :for "password") "パスワード:")
       ((:input :type "password" :name "password")))
      (:div ((:input :type "submit" :value "ログイン")))))))

(defun trim (x)
  (and x (string-trim '(#\Space #\Tab #\Newline) x)))

(defun presentp (x)
  (and x (trim x) ""))

(define-actindi.net-template (auth "/auth") (user password)
  (let ((user (ele:get-instance-by-value 'user 'id user)))
    (if (and user (equal password (user-password user)))
        (entry-new)
        (let ((*errors* "ログインできません。"))
          (login)))))

(define-actindi.net-template (entry-new "/entry/new")
    (title author category body)
  (with-html-output (out nil :indent nil)
    ((:div :class "content")
     (:h2 "投稿")
     (if *errors*
         (format out "~a" *errors*))
     ((:form :method "POST" :action "/entry/create")
      (:div
       ((:label :for "title") "題名")
       ((:input :type "text" :name "title" :value title)))
      (:div
       ((:label :for "author") "報告者")
       ((:input :type "text" :name "author" :value author)))
      (:div
       ((:label :for "category") "区分")
       ((:input :type "text" :name "category" :value category)))
      (:div
       ((:label :for "body") "本文")
       ((:textarea :cols 30 :rows 15 :name "body")
        (format out "~a" (trim (or body "")))))
      (:div ((:input :type "submit" :value "投稿")))))))

(define-actindi.net-template (entry-create "/entry/create")
    (title author category body)
  (progn
    (make-instance 'entry
                   :title title
                   :author author
                   :category category
                   :body body)
    (hunchentoot:redirect "/")))

(defvar *server*)

;; start
(defun start-tech.actindi.net (&key (port 8888))
  ;; elephant のストアをオープンする。
  (ele:open-store *store-spec*)
  ;;(LOAD (MERGE-PATHNAMES *DEFAULT-DIRECTORY* "blog.lisp"))
  (setq hunchentoot:*hunchentoot-default-external-format*
        (flex:make-external-format :utf-8 :eol-style :lf))
  (setq hunchentoot:*default-content-type* "text/html; charset=utf-8")
  ;; *acceptor*
  (setq hunchentoot:*show-lisp-errors-p* t
        hunchentoot:*handle-http-errors-p* nil)
  (setq *server* (make-instance 'hunchentoot:acceptor :port port))
  (start *server*))

;; stop
(defun stop-tech.actindi.net ()
  (stop *server*)
  ;; elephant のストアをクローズする。
  (ele:close-store))
