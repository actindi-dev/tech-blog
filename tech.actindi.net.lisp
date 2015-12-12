(in-package :tech.actindi.net)

(defvar *errors* nil)
(defparameter *entries-per-page* 10)

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

;; RSS
(defaction /rss.xml ()
  (setf (content-type) "text/html; charset=utf-8")
  (html
    (raw "<?xml version=\"1.0\" encoding=\"utf-8\"?>")
    (:rss
     :version "2.0"
     (:channel
      (:title "アクトインディ技術部隊報告書")
      (:link "http://tech.actindi.net")
      (:description "アクトインディ技術部隊報告書")
      (raw (format-date-string "<lastBuildDate>%a, %d %b %Y %H:%M:%S +0900</lastBuildDate>"))
      (:language "ja")
      (loop for x in (zrang :entries 0 nil :from-end t)
            do (html
                 (:item
                  (:title (post-title x))
                  (:link (format nil "http://tech.actindi.net~A" (post-path x)))
                  (:description
                   (raw "<![CDATA[") (raw (post-body x)) (raw "]]>"))
                  (raw
                   (format-date-string "<pubDate>%a, %d %b %Y %H:%M:%S +0900</pubDate>"
                                       (post-date x))))))))))

;; メンバー一覧
(defun top-member ()
  (html
    (:div :id "member"
      (:h2 :class "design" "メンバー一覧")
      (:p :class "title"
        "アクトインディ技師部隊員名簿")
      (:ul
        (:li (:a :href "/akiyama" "akiyama"))
        (:li (:a :href "/chiba" "chiba"))
        (:li (:a :href "/kawaguchi" "kawaguchi"))
        (:li (:a :href "/komatsu" "komatsu"))
        (:li (:a :href "/namikata" "namikata"))
        (:li (:a :href "/oishi" "oishi"))
        (:li (:a :href "/tahara" "tahara")))
      (:p :class "title"
        "アクトインディ技師部元隊員")
      (:ul
        (:li (:a :href "/komagata" "komagata"))
        (:li (:a :href "/machida" "machida"))
        (:li (:a :href "/masuda" "masuda"))
        (:li (:a :href "/aoki" "aoki"))
        (:li (:a :href "/ataka" "ataka"))
        (:li (:a :href "/nakanishi" "nakanishi")))
      (:p :class "to_actindi"
        (:a :href "http://www.actindi.com"
          "アクトインディへ"))
      (:a :href "/entry/new" "投稿する"))))

;; お知らせ
(defun block-news ()
  (html
    (:div :id "news"
      (:h2 "技師部隊からの" (:br)
        "お知らせ")
      #+nil
      (:p "子供とおでかけ頑張っています" ((:a :href "http://iko-yo.net/") "iko-yo.net"))
      (:p (:a :href "http://www.actindi.com/recruit/programmer" "【求人】エンジニア募集")
        "しています。"))))

(defun twitter ()
  "こんにちは!!、こんにちは!!")

;; テンプレート
(defmacro with-defalut-template ((&key (title "アクトインディ技術部隊報告書")) &body contents)
  `(html
     (raw "<!DOCTYPE html>")
     (:html
       :lang "ja"
       (:head (:meta :charset "UTF-8")
         (:title ,title)
         (:link :href "/stylesheets/reset.css" :rel "stylesheet" :type "text/css")
         (:link :href "/stylesheets/basic.css" :rel "stylesheet" :type "text/css")
         (:link :href "/rss.xml" :rel "alternate" :type "application/rss+xml" :title "Actindi Tech blog")
         (:script :type "text/javascript"
           :src "http://s.hatena.ne.jp/js/HatenaStar.js"
           (raw "Hatena.Star.Token = 'cf59d5b3db097a760443474ddf49026f6c5e40f3';"))
         ;; cf. http://d.hatena.ne.jp/hatenastar/20070707
         (:script :type "text/javascript"
           (raw
            "Hatena.Star.SiteConfig = {
  entryNodes: {
    'div.content': {
      uri: 'h2 a',
      title: 'h2',
      container: 'h2'
    }
  }
};")))
       (:body
           (:div#header
            (:div.inner
             (:div.twitter
              (:h2.design "twitter")
              (:p (twitter)))
             (:h1.design_a
              (:a :href "" :title "" "タイトル"))
             (:ol#bread_crumbs
              (:li (:a :href "/" "home")))))
         (:div.inner
          (:div#columns
           (:div#cotents
            ;; contents
            ,@contents
            (:div.footer nil))
           (:div#local_nav
            ;; news
            (block-news)
            (:div#counter
             (:dl
                 (:dt "本頁の来客数")
               (:dd (format nil "~A名" (number-to-kanji (inc :counter))))))
            (top-member)))
          ;; ads
          (:div#foo_ads
           (:div#categories
            (:h2.design "カテゴリー")
            (:ul
                (loop for post in (zrang :entries 0 nil :from-end t)
                      do (html (:li (:a :href (post-path post) (post-title post))))))
            (:p.to_actindi (:a :href "http://www.actindi.com" "アクトインディ")))
           (:div.poster
            (:img :src "/images/poster_01.jpg" :alt "aaaa"))
           (:script :type "text/javascript"
             (raw "//<![CDATA[
(function() {
         var links = document.getElementsByTagName('a');
         var query = '?';
         for(var i = 0; i < links.length; i++) {
              if(links[i].href.indexOf('#disqus_thread') >= 0) {
              query += 'url' + i + '=' + encodeURIComponent(links[i].href) + '&';
              }
              }
              document.write('<script charset=\"utf-8\" type=\"text/javascript\" src=\"http://disqus.com/forums/actindi/get_num_replies.js' + query + '\"></' + 'script>');
              })();
         //]]>"))))                     ;"
         (:div#footer
          (:p.center "Copyright " (raw "&copy;") " 2009-2015 アクトインディ All rights reserved."))))))

(defun loginp ()
  (multiple-value-bind (user password) (authorization)
    (and user password (authrizedp user password))))

(defmacro with-authorization (&body body)
  `(if (loginp)
       (progn ,@body)
       (require-authorization)))

(defun authrizedp (user password)
  (equal password (@ (format nil "user:~a" user))))

(defun pager (current-page total url)
  (html
    (:div :class "content"
      (:p :class "to_top"
        (when (< 1 current-page)
          (html (:a :href (format nil "~a?page=~d" url (1- current-page))
                  "前へ")))
        " | "
        (when (> (/ total *entries-per-page*)  current-page)
          (html (:a :href (format nil "~a?page=~d" url (1+ current-page))
                  "次へ")))))))

;; トップページ
(defaction /root (:path "/")
  (let* ((page (or (and @page (parse-integer @page :junk-allowed t)) 1))
         (start (* *entries-per-page* (1- page)))
         (end (1- (+ start *entries-per-page*))))
    (with-defalut-template ()
      (loop for x in (zrang :entries start end :from-end t)
            do (html
                 (:div.content
                  (:h2
                      (:a :href (post-path x) (post-title x)))
                  (:dl.date
                   (:dd (format-date-string "%g%#e年%#m月%#d日(%v) %H時%M分%S秒"
                                            (post-date x)))
                   (:dt "区分")
                   (:dd (post-category x))
                   (:dt "報告者: ")
                   (:dd (post-author x)))
                  (:p (raw (post-body x)))
                  (:p.to_top
                   (:a :href (format nil "~A#disqus_thread" (post-path x))
                     ">View Comments")
                   (raw "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
                   (:a :href "" "このページの上へ戻る")))))
      (pager page (zcard :entries) "/"))))

(defmacro def-member-page (name)
  `(defaction ,(intern (format nil "/~:@(~a~)" name)) ()
     (let* ((page (or (and @page (parse-integer @page :junk-allowed t)) 1))
            (start (* *entries-per-page* (1- page)))
            (end (1- (+ start *entries-per-page*))))
       (with-defalut-template (:title (concatenate 'string
                                                   (string-downcase ',name)
                                                   "の記事 — アクトインディ技術部隊報告書"))
         (loop for x in (zrang ,(format nil "author:~a" name) start end :from-end t)
               do (html
                    (:div.content
                     (:h2
                         (:a :href (post-path x) (post-title x)))
                     (:dl.date
                      (:dd (format-date-string "%g%#e年%#m月%#d日(%v) %H時%M分%S秒"
                                               (post-date x)))
                      (:dt "区分")
                      (:dd (post-category x))
                      (:dt "報告者: ")
                      (:dd (post-author x)))
                     (:p (raw (post-body x)))
                     (:p.to_top
                      (:a :href (format nil "~A#disqus_thread" (post-path x))
                        ">View Comments")
                      (raw "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
                      (:a :href "" :title "" "このページの上へ戻る")))))
         (pager page (zcard ,(format nil "author:~a" name))
                (concatenate 'string "/" ,name))))))

(def-member-page "akiyama")
(def-member-page "aoki")
(def-member-page "ataka")
(def-member-page "chiba")
(def-member-page "kawaguchi")
(def-member-page "komagata")
(def-member-page "komatsu")
(def-member-page "namikata")
(def-member-page "machida")
(def-member-page "masuda")
(def-member-page "nakanishi")
(def-member-page "oishi")
(def-member-page "tahara")


(defaction /@id (:route-function (lambda (url method)
                                   (declare (ignore method))
                                   (ppcre:register-groups-bind (id) ("^/([0-9]+)$" url)
                                     (setf (param :id) id))))
  (let* ((uri (env "REQUEST_URI"))
         (id (parse-integer @id))
         (post (car (zrang-by-score :entries id id))))
    (with-defalut-template (:title (concatenate 'string
                                                (post-title post)
                                                " — アクトインディ技術部隊報告書"))
      (html
        (:div.content
         (:h2
             (:a :href (post-path post) (post-title post)))
         (:dl :class "date"
           (:dd (format-date-string "%g%#e年%#m月%#d日(%v) %H時%M分%S秒"
                                    (post-date post)))
           (:dt "区分")
           (:dd (post-category post))
           (:dt "報告者: ")
           (:dd (post-author post)))
         (:p (raw (post-body post)))
         (:p :class "to_top"
           (:a :href "/" "トップページに戻る"))
         (:div.comment
          (raw "<div id=\"disqus_thread\"></div><script type=\"text/javascript\" src=\"http://disqus.com/forums/actindi/embed.js\"></script><noscript><a href=\"http://actindi.disqus.com/?url=ref\">View the discussion thread.</a></noscript><a href=\"http://disqus.com\" class=\"dsq-brlink\">blog comments powered by <span class=\"logo-disqus\">Disqus</span></a>"))
         (:a.edit :href (concatenate 'string uri "/edit")
                  "編集"))))))

(defun trim (x)
  (and x (string-trim '(#\Space #\Tab #\Newline) x)))

(defun presentp (x)
  (and x (trim x) ""))

(defun entry-form (action id title author category body)
  (html
    (:form :method "POST" :action action
      (when id
        (html
          (:input :type "hidden" :name "id" :value id)))
      (:div
          (:label :for "title") "題名" (:br)
        (:input :type "text" :name "title" :value title))
      (:div
          (:label :for "author" "報告者") (:br)
        (:input :type "text" :name "author" :value author))
      (:div
          (:label :for "category" "区分") (:br)
        (:input :type "text" :name "category" :value category))
      (:div
          (:label :for "body" "本文") (:br)
        (:textarea :cols 30 :rows 15 :name "body"  (trim (or body ""))))
      (:div (:input :type "submit" :value "投稿")))))

(defaction /entry/new ()
  (with-authorization
    (with-defalut-template ()
      (html
        (:div.content
         (:h2 "投稿")
         (when *errors*
           (format nil "~a" *errors*))
         (entry-form "/entry/create" nil @title @author @category @body))))))

(defaction /entry/create ()
  (with-authorization
    (let* ((post (make-post :title @title
                            :author @author
                            :category @category
                            :body @body))
           (date (post-date post)))
      (zadd :entries date post)
      (zadd (format nil "author:~a" @author) date post))
    (redirect "/")))

(defaction /@id/edit ()
  (with-authorization
    (with-defalut-template ()
      (let* ((id (parse-integer @id))
             (post (car (zrang-by-score :entries id id))))
        (html
          (:div.content
           (:h2 "投稿")
           (if *errors*
               (format nil "~a" *errors*))
           (entry-form "/entry/update"
                       id
                       (post-title post)
                       (post-author post)
                       (post-category post)
                       (post-body post))))))))

(defaction /entry/update ()
  (with-authorization
    (let* ((id (parse-integer @id))
           (post (car (zrang-by-score :entries id id))))
      (setf (post-title post) @title
            (post-author post) @author
            (post-category post) @category
            (post-body post) @body)
      (redirect (format nil "/~a" id)))))

(defvar *server*)

(defclass tech-app (application)
  ())

(defmethod call :around ((tech-app tech-app))
  (with-db ((merge-pathnames "lepis/" *default-directory*))
    (call-next-method)))

;; start
(defun start-tech.actindi.net (&key (port *http-port*))
  (unless *db*
    (setf *db* (open-db (merge-pathnames "lepis/" *default-directory*))))
  ;; Unpyo
  (setf *invoke-debugger-p* nil)
  (setq *server* (make-server :app (make-instance 'tech-app) :port port))
  (run *server*))

;; stop
(defun stop-tech.actindi.net ()
  (stop *server*)
  (when *db*
    (close-db *db*)
    (setf *db* nil)))
