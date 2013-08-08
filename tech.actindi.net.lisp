(in-package :tech.actindi.net)

(defvar *errors* nil)
(defvar *entries-per-page* 10)

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
  (with-output-to-string (*html-output*)
    (html
      (raw "<?xml version=\"1.0\" encoding=\"utf-8\"?>")
      (:rss
       :version "2.0"
       (:channel
        (:title "アクトインディ技術部隊報告書")
        (:link "http://tech.actindi.net")
        (:description "アクトインディ技術部隊報告書")
        (format-date *html-output* "<lastBuildDate>%a, %d %b %Y %H:%M:%S +0900</lastBuildDate>")
        (:language "ja")
        (loop for x in (get-all-entries)
              do (html
                   (:item
                    (:title (entry-title x))
                    (:link (format nil "http://tech.actindi.net~A" (entry-path x)))
                    (:description
                     (raw "<![CDATA[") (raw (entry-body x)) (raw "]]>"))
                    (format-date *html-output* "<pubDate>%a, %d %b %Y %H:%M:%S +0900</pubDate>"
                                 (entry-date x))))))))))

;; メンバー一覧
(defun top-member ()
  (html
    (:div :id "member"
      (:h2 :class "design" "メンバー一覧")
      (:p :class "title"
        "アクトインディ技師部隊員名簿")
      (:ul
          (:li (:a :href "/uemura" "uemura"))
        (:li (:a :href "/aoki" "aoki"))
        (:li (:a :href "/ataka" "ataka"))
        (:li (:a :href "/kawaguchi" "kawaguchi"))
        (:li (:a :href "/tahara" "tahara")))
      (:p :class "title"
        "アクトインディ技師部元隊員")
      (:ul
          (:li (:a :href "/komagata" "komagata"))
        (:li (:a :href "/machida" "machida"))
        (:li (:a :href "/masuda" "masuda"))
        (:li (:a :href "/chiba" "chiba")))
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
(defmacro with-defalut-template (&body contents)
  `(html
     (raw "<!DOCTYPE html>")
     (:html
       :lang "ja"
       (:head (:meta :charset "UTF-8")
         (:title "アクトインディ技術部隊報告書")
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
               (:dd (format nil "~A名" (number-to-kanji (incf-counter))))))
            (top-member)))
          ;; ads
          (:div#foo_ads
           (:div#categories
            (:h2.design "カテゴリー")
            (:ul
                (loop for entry in (get-all-entries)
                      do (html (:li (:a :href (entry-path entry) (entry-title entry))))))
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
          (:p.center "Copyright " (raw "&copy;") " 2013 アクトインディ All rights reserved."))))))

(defmacro define-actindi.net-template ((name path) (&rest args) contents)
  `(define-easy-handler (,name :uri ,path) ,args
     (with-defalut-template ,contents)))

(defun loginp ()
  (multiple-value-bind (user password) (authorization)
    (authrizedp user password)))

(defmacro with-authorization (&body body)
  `(if (loginp)
       (progn ,@body)
       (require-authorization)))

(defun authrizedp (user password)
  (let ((x (rucksack-find 'user 'id user)))
    (and x (equal password (user-password x)))))

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
  (let ((page (or (and @page (parse-integer @page :junk-allowed t)) 1)))
    (with-defalut-template
      (loop for x in (get-entries (* *entries-per-page* (1- page)) *entries-per-page*)
            do (html
                 (:div.content
                  (:h2
                      (:a :href (entry-path x) (entry-title x)))
                  (:dl.date
                   (:dd (format-date *html-output* "%g%#e年%#m月%#d日(%v) %H時%M分%S秒"
                                     (entry-date x)))
                   (:dt "区分")
                   (:dd (entry-category x))
                   (:dt "報告者: ")
                   (:dd (entry-author x)))
                  (:p (raw (entry-body x)))
                  (:p.to_top
                   (:a :href (format nil "~A#disqus_thread" (entry-path x))
                     ">View Comments")
                   (raw "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
                   (:a :href "" "このページの上へ戻る"))))))
    (pager page (count-entryes) "/")))

(defmacro def-member-page (name)
  `(defaction ,(intern (format nil "/~:@(~a~)" name)) ()
     (let ((page (or (and @page (parse-integer @page :junk-allowed t)) 1)))
       (with-defalut-template
         (loop for x in (get-entries-by-author ,name
                                               (* *entries-per-page* (1- page))
                                               *entries-per-page*)
               do (html
                    (:div.content
                     (:h2
                         (:a :href (entry-path x) (entry-title x)))
                     (:dl.date
                      (:dd (format-date *html-output* "%g%#e年%#m月%#d日(%v) %H時%M分%S秒"
                                        (entry-date x)))
                      (:dt "区分")
                      (:dd (entry-category x))
                      (:dt "報告者: ")
                      (:dd (entry-author x)))
                     (:p (raw (entry-body x)))
                     (:p.to_top
                      (:a :href (format nil "~A#disqus_thread" (entry-path x))
                        ">View Comments")
                      (raw "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;")
                      (:a :href "" :title "" "このページの上へ戻る"))))))
       (pager page (count-entryes-by-author ,name)
              (concatenate 'string "/" ,name)))))


(def-member-page "uemura")
(def-member-page "aoki")
(def-member-page "ataka")
(def-member-page "kawaguchi")
(def-member-page "komagata")
(def-member-page "machida")
(def-member-page "tahara")
(def-member-page "masuda")
(def-member-page "chiba")


(defaction /@id (:route-function (lambda (url)
                                   (ppcre:register-groups-bind (id) ("^/([0-9]+)$" url)
                                     (setf (param :id) id))))
  (let* ((uri (env "REQUEST_URI"))
         (path (subseq uri 0 (position #\? uri)))
         (entry (rucksack-find 'entry 'path path)))
    (with-defalut-template
      (html
        (:div.content
         (:h2
             (:a :href (entry-path entry) (entry-title entry)))
         (:dl :class "date"
           (:dd (format-date *html-output*
                             "%g%#e年%#m月%#d日(%v) %H時%M分%S秒"
                             (entry-date entry)))
           (:dt "区分")
           (:dd (entry-category entry))
           (:dt "報告者: ")
           (:dd (entry-author entry)))
         (:p (raw (entry-body entry)))
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

(defun entry-form (action path title author category body)
  (html
    (:form :method "POST" :action action
      (when path
        (html
          (:input :type "hidden" :name "path" :value path)))
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
    (with-defalut-template
      (html
        (:div.content
         (:h2 "投稿")
         (when *errors*
           (format nil "~a" *errors*))
         (entry-form "/entry/create" @title nil @author @category @body))))))

(defaction /entry/create ()
  (with-authorization
    (make-instance 'entry
                   :title @title
                   :author @author
                   :category @category
                   :body @body)
    (redirect "/")))


(defaction /@id/edit ()
  (with-authorization
    (with-defalut-template
      (ppcre:register-groups-bind (path)
          ("(/[0-9]+)/edit$" (request-uri))
        (let ((entry (rucksack-find 'entry 'path path)))
          (html
            (:div.content
             (:h2 "投稿")
             (if *errors*
                 (format nil "~a" *errors*))
             (entry-form "/entry/update"
                         path
                         (entry-title entry)
                         (entry-author entry)
                         (entry-category entry)
                         (entry-body entry)))))))))

(defaction /entry/update ()
  (with-authorization
    (let ((entry (rucksack-find 'entry 'path @path)))
      (setf (entry-title entry) @title
            (entry-author entry) @author
            (entry-category entry) @category
            (entry-body entry) @body)
      (redirect @path))))

(defvar *server*)

(defclass tech-app (app-routes-mixin)
  ())

(defmethod call :around ((tech-app tech-app))
  (let ((retry-count 0))
   (with-simple-restart (retry "Retry")
     (handler-bind ((rucksack:transaction-conflict (lambda (c)
                                                     (format t "~&Restart for ~a." c)
                                                     (when (< (incf retry-count) 5)
                                                       (invoke-restart 'retry)))))
       (rucksack:with-transaction ()
         (call-next-method))))))

#+deleteme
(defmethod hunchentoot::acceptor-dispatch-request ((self my-acceptor) request)
  (let (response
        (handler-done t))
    (rucksack:with-transaction ()
      ;; hunchentoot のリダイレクトのハンドリング
      (catch 'hunchentoot::handler-done
        (setf response (call-next-method))
        (setf handler-done nil)))
    (if handler-done
        (throw 'hunchentoot::handler-done nil)
        response)))

;; start
(defun start-tech.actindi.net (&key (port *http-port*))
  #+for-debug
  (setf hunchentoot:*catch-errors-p* nil)
  (unless rucksack:*rucksack*
    (setf rucksack:*rucksack* (rucksack:open-rucksack
                               (ensure-directories-exist
                                (merge-pathnames "rucksack/" *default-directory*)))))
  ;; html
  (setf info.read-eval-print.html:*html-pprint* nil)
  ;; Unpyo
  (setf *invoke-debugger-p* nil)
  (setq *server* (make-server :app (make-instance 'tech-app) :port port))
  (run *server*))

;; stop
(defun stop-tech.actindi.net ()
  (stop *server*)
  (setf rucksack:*rucksack* (prog1 nil (rucksack:close-rucksack rucksack:*rucksack*))))
