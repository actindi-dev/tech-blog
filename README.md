# OAuth

https://console.developers.google.com/project
でプロジェクトを作る。
tech-actindi

クライアント ID を作成

* アプリケーションの種類
  ウェブ アプリケーション
* 承認済みの JavaScript 生成元
  http://tech.actindi.net
* 承認済みのリダイレクト URI
  http://tech.actindi.net/oauth2callback

google-oauth.lisp に クライアント ID と クライアント シークレット を google-oauth.example.lisp を参考に書く。
