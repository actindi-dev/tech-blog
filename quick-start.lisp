;;; -*- Mode: common-lisp; Lowercase: t; -*-

(eval-when (:compile-toplevel :load-toplevel :execute)
  (asdf:oos 'asdf:load-op :tech.actindi.net))

;; ファイルの置かれているディレクトリを設定
(let ((*default-pathname-defaults* (make-pathname
                                    :directory
                                    (directory-namestring *load-pathname*))))
  ;; start
  (tech.actindi.net:start-tech.actindi.net)

  ;; 過去の記事を読み込むユーティリティ
  (load "migrate")

  ;; 過去の記事を読み込み
  (load "blog")

  ;; 初期ユーザを作成
  (tech.actindi.net::make-initial-user)

  ;; 本頁の来客数の初期値を設定
  (ele:add-to-root 'tech.actindi.net::counter 8415))


