;;; -*- Mode: common-lisp; Lowercase: t; -*-

(asdf:oos 'asdf:load-op :tech.actindi.net)

;; ファイルの置かれているディレクトリを設定
(let ((*default-pathname-defaults* (make-pathname 
                                    :directory
                                    (directory-namestring *load-pathname*))))
  ;; start
  (tech.actindi.net:start-tech.actindi.net)

  ;; 過去の記事を読み込むユーティリティ
  (load "migrate")
  
  ;; 過去の記事を読み込み
  (load "blog"))

