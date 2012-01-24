(
(:PATH "/3444130800" :TITLE "ブログはじめました" :BODY "
はじめまして。komagataと申します。
<br />
先日、アクトインディ株式会社のシステムの担当になったのでこのブログを作ってみました。
<br />
小さくてくだらない作業までこのブログに書いていこうと思うので、「ベンチャーのシステム担当あるある」
<br />
みたいな感じで見ていただければ・・・なとと考えています。
<br />
現状、僕とアルバイトのsakurabaの二人でネットワークと開発（要するにパソコン関係全部）を担当しています。
<br />
僕自身、ネットワークの知識がイマイチなところもあり、「そこはこうすべきだろう、常識的に考えて・・・」
<br />
などというところがあれば教えていただきたいな、という面もあります。
<br />
なにはともあれ、よろしくお願いします。"
 :AUTHOR "komagata" :DATE 3444130800 :CATEGORY "システム管理")
(:PATH "/3444174000" :TITLE "迫る引越し" :BODY "
komagataです。
<br />
何で今急いでブログを作ったかというと、会社が明日引越しだからです。
<br />
明日かよ！とお思いかもしれませんが、時は無常にも過ぎ去り、明日です。
<br />
まずは、引越し先に電話回線(FAX)・Bフレッツ回線・プロバイダを用意しました。
<br />
お客様のサービスのようなクリティカルなものは社内に無いので、自社サービスがひとつ乗っかっているサーバー１台だけを先に人力（チャリと人手）で運んで繋いできました。（昨日）
<br />
それ以外は止めても大丈夫なので荷造りして引越し屋さんにまかせます。
<br />
自分のブログで
<a href='http://docs.komagata.org/4017'>
  ITベンチャー勝ち組セット
</a>
などというエントリーを書きましたが、その通りの
<a href='http://www.interlink.or.jp/service/flets/b/price.html'>
  INTERLINKの固定IP8個のやつ
</a>
を契約しました。
<br />
カードがあればその場で使えるようになるのは助かりますね。
<br />
引越し先はBフレッツのマンションタイプが元々あったのでVDSLモデムが届きました。
<br />
無線LANルータは
<a href='http://corega.jp/prod/wlbargpxw/'>
  COREGA CG-WLBARGPXW
</a>
を買いました。
<br />
おいおい、こんなので大丈夫か？と思うかもしれませんが、このルーター使ったことあるので大丈夫なんじゃないかなと楽観的に考えています。
<br />
固定IPを使うにはルータにUnnumbered IPという機能が必須だそうで、買うときに気をつけたいポイントです。
<br />
使ったことあるルータなので、特に問題無く、無線LANと固定IPでサーバ一個（Debian etch）設定できました。
<br />
/etc/network/interfaces を新しいIPに変えて、DNSを変更しただけです。
<br />
無線LANはWPA2, AESでパスワードかけましたが、アクセスポイント自体を隠す設定にするかどうかちょっと悩んで隠さないことにしました。（エンジニアでない人はクライアントの設定で混乱するかと思いまして・・・）
これはどっちがいいでしょうか。みなさんどうしてますか？
<br />
引越し後の通常社員初出社は明後日で、引越し屋さんが運び込むのは明日です。
<br />
明日中に全クライアント向けの配線や設定を済ませてこようと思います。"
 :AUTHOR "komagata" :DATE 3444174000 :CATEGORY "システム管理")
(:PATH "/3444217200" :TITLE "1人体制での死活監視" :BODY "
<a href='http://q.hatena.ne.jp/1230133898'>
  一定規模以上のWebサイトを運営しているエンジニアの方、業務時間外の障害対応ってどういう風にやっていますか？ ルールとか体制とかを中心に教えてほしいです。 ちなみに.. – 人力検索はてな
</a>
<br />
<blockquote>
      ちなみにぼくの会社では、監視ツールや自作監視スクリプトでアラートをエンジニア社員全員に送って、誰かが対応することになっています。（たまに誰も対応やレスをしなくて上司に怒られます）
    これはぼくら社員にとって正直ストレスになるので、なにかよいルールや体制を上司に提案したいなと考えています。
</blockquote>
はてなでこういう質問がありました。たしかに大きいところではストレスになりますよね。
うちは「一定規模以上のWebサイトを運営してい」ないので特にストレスは感じないです。（アラート受ける人も2人しかいないし・・・）
<br />
Montasticという無料でWebのステータスをチェックしてアラートを送ってくれるサービスを使っています。
<br />
これだとHTTPしかチェックしてくれないのでライブドアのDATAHOTEL PATROLというやつも試してみたいところです。
<br />
それとRailsのExceptionNotifierプラグインのみです。
<br />
社内に監視システムを構築するとその監視システム自体の維持が大変なのでやってません。
<br />
品質とのトレードオフだと思いますが、基本的に、
<br />
「人員1人体制想定でどこまで品質を高められるか」
<br />
という方向でがんばってみたいと思います。"
 :AUTHOR "komagata" :DATE 3444217200 :CATEGORY "システム管理")
(:PATH "/3444476400" :TITLE "オフィスの引越し（プロバイダー編）" :BODY "
komagataです。
<br />
五反田から五反田へオフィス引越しました。
<br />
システム管理者にとっては何かと大変なオフィスの引越しですが、僕は担当することになったばかりなので全体を把握する丁度良い機会になりました。
<br />
予告通り、プロバイダーはインターリンクの固定IP8個にしました。
<br />
社内にクリティカルなサーバは無いんですが、IPも振り直しです。
<br />
/etc/network/intarfaces を変更して安心してたら、Apacheの443番ポートのバーチャルホストの設定のところに固定IPを書いていたのを忘れてました・・・。
<br />
<strike>
  それと、インターリンクはOP25Bしていることを忘れていて、
</strike>
<br />
（25番で大丈夫でした。）
<br />
「そういやRedmineのチケット関連のメールが来てないな・・・」
<br />
などと思っていました。
<br />
慌ててPostfixをSubmissionポートを使う設定に変えました。
<br />
<strike>
  会社で25番を絶対使いたい場合は別のプロバイダをお考えください。
</strike>
<br />
参照：
<a href='http://docs.komagata.org/3983'>
  Postfix – Submissionポートで通信 – p0t
</a>"
 :AUTHOR "komagata" :DATE 3444476400 :CATEGORY "システム管理")
(:PATH "/3444519600" :TITLE "ベンチャーでのおすすめアンチウィルスソフト" :BODY "
komagataです。
<br />
以前、はじめてベンチャーのシステム管理を担当したときは、張り切っていて、サーバー集中管理型のアンチウィルスソフトの見積もりを取ったりしていたんですが、今回は、「フリーでいいの無いかな？」という、ゆるふわ系です。
<br />
人数が10人程度なのでディレクトリサービスとか、そこまでやらなくてもいいかなと思っています。（以前は10人未満の会社でActive Directoryを使ってましたが、もう設定とか思い出せません）個人ではアンチウィルスソフトは
<a href='http://www.avgjapan.com/'>
  AVG
</a>
を使っていて、非常に気に入っていたんですが、商用利用は有料なのでGPLの
<a href='http://www.clamwin.com/'>
  ClamWin
</a>
を試してみました。
<br />
日本語化パッチも公開されていて、定義ファイルのダウンロードやスキャンのスケジュール設定も簡単にでき、予想以上に「使える！」といった感じでした。
<br />
会社でも導入を進めて行きたいと思います。"
 :AUTHOR "komagata" :DATE 3444519600 :CATEGORY "システム管理")
(:PATH "/3445167600" :TITLE "sakuraba引退記念" :BODY "
komagataです。
<br />
最初から予定されていたことですが、２月末で、中米の荒くれ者ことsakurabaがアルバイトを完了しました。
<br />
沖縄料理屋で送別会をやって、プレゼントを贈りました。
<br />
sakurabaはMac信者なのでMighty Mouseでも送ればちょっとうれしいのは目に見えていたので、一人おでんセットをプレゼントしました。（しかもMighty Mouseより無意味に高い）
<br />
sakurabaは僕とmachidaさんに向かってとびっきりの呪いの言葉を吐きました。
<br />
sakurabaはアルバイトできてから、RailsもLinuxのサーバー構築も自分でどんどん覚えてしまって、一人でできるようになってしまいました。
<br />
いまでは僕が、「もっとテスト書いたほうがいいですよ」と怒られる始末。
<br />
ボリビアにでも旅立ってしまうのかもしれませんが、これからのsakurabaの活躍を陰ながら応援しています。"
 :AUTHOR "komagata" :DATE 3445167600 :CATEGORY "卒業")
(:PATH "/3445513200" :TITLE "非常に重要なアプリケーションの導入" :BODY "
komagataです。
<br />
先週末からchiba2009さんがエンジニアとして入ってくれました。
<br />
chibaさんは一番得意な言語がCommon Lispという素敵な方です。
<br />
ぜひ社内のシステムのそこここにCommon Lispを忍ばせてほしいです。
<br />
そのchibaさんに今日、とても重要なアプリケーション教えてもらいました。
<br />
それはvrmsです。
<br />
<pre>
  % apt-cache search vrms
vrms - virtual Richard M. Stallman
</pre>
早速インストールして実行してみました。
<br />
<pre>
  % vrms
                Non-free packages installed on dev

gdb-doc                   The GNU Debugger Documentation

  1 non-free packages, 0.2% of 503 installed packages.
</pre>
まずい！
<br />
というかなんでgdbのドキュメントがnon-freeなんでしょうか。
<br />
<pre>
  % sudo apt-get remove --purge gdb-doc
% vrms
No non-free packages installed on dev!  rms would be proud.
</pre>
これで安心。rmsもお喜びのようです。"
 :AUTHOR "komagata" :DATE 3445513200 :CATEGORY "自由")
(:PATH "/3445570800" :TITLE "こんにちは、こんにちは" :BODY "
こんにちは、先週の金曜からお世話になっております、chiba☆2009と申します。 「改善」という言葉は自分の一番好きな言葉で座右の銘としております。 世界をCommon Lisp色に改善してゆきたいと思っています!
<br />
どうぞよろしくお願いします！！"
 :AUTHOR "chiba" :DATE 3445570800 :CATEGORY "人")
(:PATH "/3448278000" :TITLE "掃除は大事" :BODY "
社内PCで突然電源がOFFになる不調なPCがあり、メモリチェック等色々対処してみたのですが、特に不具合は見付けられず、困っていました。
<br />
稼働中のPCを触ってみたところかなり高温になっているという報告を受けたので、4月から新しい仲間になったmasuda氏が機転を効かせてPC内部を掃除したところ、ばっちりPCの温度が下がり、調子も良くなりました。
<br />
どうも熱暴走でPCが落ちてしまっていたようです。
<br />
基本ですが掃除は大事だなとあらためて思った一件です。"
 :AUTHOR "chiba" :DATE 3448278000 :CATEGORY "システム管理")
(:PATH "/3457818000" :TITLE "テストエントリー" :BODY "
<p>
  SBCLだと日本語が通らないので、無理矢理にマクロを通したり、文字列をバイト列に変換したり涙ぐましいのですが、もっと簡単な方法はないんでしょうか。
  <br />
  根本的に直さないと駄目な気がしてきました。
  AllegroServeより良いのってどういうのがあるんでしょう。
</p>"
 :AUTHOR "chiba" :DATE 3457818000 :CATEGORY "blog制作")
(:PATH "/3457821600" :TITLE "Hunchentootにしたい" :BODY "
<p>
  色々面倒臭そうなのでHunchentootにしたくなってきました。
  とはいえ、Hunchentootも使ったことがないのでなんとも言えません。
</p>"
 :AUTHOR "chiba" :DATE 3457821600 :CATEGORY "blog制作")
(:PATH "/3457825200" :TITLE "エントリーを後でどういう風に修正したら良いか" :BODY "
<p>
  エントリーを後でどういう風に修正したら良いか
  <br />
  めんどくさそうです。
</p>"
 :AUTHOR "chiba" :DATE 3457825200 :CATEGORY "blog制作")
(:PATH "/3458279064" :TITLE "CSSはウェブページの命" :BODY "
駄目なページでもスタイルシートを当てるとそれなりに見えるのは不思議ですね。"
 :AUTHOR "chiba" :DATE 3458279064 :CATEGORY "blog制作")
(:PATH "/3458279537" :TITLE "URLを毎度決めている" :BODY "
今のところURLを毎回決めていますが、これに
<a href='http://www.lispworks.com/documentation/HyperSpec/Body/f_get_un.htm'>
  (get-universal-time)
</a>
が使えることに気付きました。
<br />
SLIME上で(get-universal-time)を評価してURLにすると良いかもと。
(get-universal-time)はUNIXタイムのように1970年からではなく、1900年からの秒数になります。"
 :AUTHOR "chiba" :DATE 3458279537 :CATEGORY "blog制作")
(:PATH "/3458566436" :TITLE "急激に重くなった様子" :BODY "
画像はディレクトリごとにマッピングして読み込ませているのですが、いやに読み込みが遅い気がします。全部のファイルを個別にマッピングした方が良いのでしょうか。"
 :AUTHOR "chiba" :DATE 3458566436 :CATEGORY "blog制作")
(:PATH "/3458828432" :TITLE "見た目だけはなんとか完成" :BODY "
見た目だけは、machidaさんのcssを合わせることにより、なんとか完成しました。
<br />
デザインされたhtmlをlmlに直したりしているのですが、これが割と大変です。
<br />
lmlとは、htmlをS式で表現したものなのですが、簡潔でS式の編集環境が整ってさえいれば素のhtmlより簡単に編集できます。
<br />
とはいえ、その編集環境を整えるのが面倒なのですが…。"
 :AUTHOR "chiba" :DATE 3458828432 :CATEGORY "blog制作")
(:PATH "/3458946663" :TITLE "このブログの更新はSLIMEでしている!" :BODY "
このブログの更新はSLIMEでしているんです!
<br />
SLIME使ってる人には非常に優しいブログですね
<br />
具体的には、このサーバーが動いているサーバーのSwankの4005番ポートをローカルにポートフォワードして、EmacsからSlimeで接続し、エントリーの関数を定義しています。簡単ですね!"
 :AUTHOR "chiba" :DATE 3458946663 :CATEGORY "blog制作")
(:PATH "/3458970860" :TITLE "社長にお披露目" :BODY "
このブログは当社のエンジニア/デザイナーが作成しているのですが、会社のページとして公開できるかどうかということで、社長にお披露目することになりました。
<br />
公開できると良いですね!!"
 :AUTHOR "chiba" :DATE 3458946663 :CATEGORY "blog制作")
(:PATH "/3459054071" :TITLE "こわれたRSSを付けました" :BODY "
がんばってRSSを付けたんですが、Safafiでは表示されません。
<br />
どこかが壊れているようですが、Google Readerや、LDRではがんばって表示してくれるようです。
しかし、それも動きがちょっと変なようです。"
 :AUTHOR "chiba" :DATE 3459054071 :CATEGORY "blog制作")
(:PATH "/3459056185" :TITLE "RSSは動いているか" :BODY "
適当にRSSを作成しているのですが、適当すぎて上手く動いてない気がします。
<br />
このエントリーがRSSリーダーに捕捉されれば、とりあえず良いのですが、されてない気がします…"
 :AUTHOR "chiba" :DATE 3459056185 :CATEGORY "blog制作")
(:PATH "/3462793200" :TITLE "Talkedbun - 日本語テキストトゥースピーチサーバー" :BODY "
<p>
  komagataです。
</p>
<p>
  アクトインディでは週一回、エンジニアが持ち回りで、「動いて、ダウロードできるプログラム」を公開・発表するという“プログラムプレゼンテーション”（まあ単なるプレゼンです）をやることにしました。
</p>
<p>
  第一回はShu MASUDAさんでしたのでそちらはお任せするとして、僕は２回目にやりました。
</p>
<blockquote>
  <p>
    <a href='http://docs.komagata.org/4190'>
      Talkedbun - 日本語テキストトゥースピーチサーバー - p0t
    </a>
  </p>
  <p>
    URLにひらがなを指定すると、そのひらがなの音声がmp3で得られるwebサーバーを作りました。
  </p>
  <p>
    <a href='http://github.com/komagata/talkedbun'>
      komagata’s talkedbun at master – GitHub
    </a>
  </p>
</blockquote>
<p>
  日本語のURLからそのまま音声が取れたら面白いかなと思って作りました。作っていて一番勉強になったのは、RubyはRubygems, Rack, Sinatraなど、クロスプラットフォームでのマイクロウェイブアプリケーションを作る環境が素晴らしく整っているなということでした。RailsがWebrickをローカルに立ち上げて開発するというスタイルを作ったので自然とWebサーバーの実装、WAFの実装、周辺ツールなどの選択肢がたくさんあります。
</p>
<p>
  ついでにhaml, sassも使ってみましたが、HTMLのインデントやCSSの重複した記述が病的に気になる僕にはぴったりのアホなツールでとても気に入りました。
</p>
<p>
  （ジェバンニマチダさんが３０分でやってくれました）
</p>"
 :AUTHOR "komagata" :DATE 3462793200 :CATEGORY "プログラムプレゼンテーション")
(:PATH "/3462861600" :TITLE "継続インテグレーションコマンド" :BODY "
<p><p>komagataです。</p><p>“プログラムプレゼンテーション”で継続的インテグレーションコマンドを作って発表しました。</p><blockquote><p><a HREF=\"http://docs.komagata.org/4211\">saimaa - 今すぐ始められる継続的インテグレーション - p0t</a></p><p>継続的インテグレーションについては、CIサーバー(Continuous Integration Server)というやつが沢山あって非常に機能も豊富です。僕の仕事には少々大げさな気がしたのと、</p><p>「cronでsvn up && rakeじゃ駄目なのかしら？」</p><p>などと思ったのでそれをちょっとだけサポートするコマンドを作ってみました。</p><p><a HREF=\"http://github.com/komagata/saimaa/tree/master\">komagata’s saimaa at master – GitHub</a></p></blockquote><p>アクトインディではcapistranoのデプロイコマンドにrspecとcucumberのフックが掛けてあるのでテストが通らなければデプロイはできません。ですが、コミットはできるのでテスト通らないコードがコミットされるとすぐにこの仕組みでメールが飛んでくるのでなかなか便利です。</p><p>これを作って感じたのは、rubygemsとgithubはクロスプラットフォームのCUIプログラム（コマンド）を作る環境として素晴らしいなということです。（全開と似たようなこと言ってますが）</p><p>rubygemsはインストールするとPATHが通ってるところに実行できる場所にコマンドをコピーしてくれるんですよね。jewelerでgithubへのアップも簡単です。</p></p>"
 :AUTHOR "komagata" :DATE 3462861600 :CATEGORY "プログラムプレゼンテーション")
(:PATH "/3462879600" :TITLE "AquesTalk Rubyバインディング" :BODY "
<p><p>komagataです。</p><p>“プログラムプレゼンテーション”でAquesTalkのRubyバインディングを作りました。（Windowsのみ）</p><blockquote><p><a HREF=\"http://docs.komagata.org/4243\">win32-aques_talk - AquesTalk rubyバインディング - p0t</a></p><p>AquesTalkのrubyバインディング作りました。</p><p><a HREF=\"http://github.com/komagata/win32-aques_talk/tree/master\">komagata’s win32-aques_talk at master – GitHub</a></p><p>AquesTalkはwindows版dllのみが組み込んで配布することもOKとなっているのでwindows版をRubyから手軽に使いたいと思って作りました。RubyバインディングといってもC言語拡張ではなく、ruby-ffi(Foreign Function Interface)を使っています。</p></blockquote><p>豊富なCのライブラリをRubyからサッと使いたいと思ってruby-ffiを使ってみました。ヘッダが必要で無く、動的ライブラリを直接実行するのが面白かったです。また、Windows上で、opensshやgitがいつも通り使えるのがちょっと意外でした。(rubyのgitバインディングはうまく動かないけど）</p></p>"
 :AUTHOR "komagata" :DATE 3462879600 :CATEGORY "プログラムプレゼンテーション")
(:PATH "/3462883892" :TITLE "Emacsでスクラッチファイルを日付順にして管理するライフハック" :BODY "
<p>
  chibaです。
</p>
<p>
  自分は特にプログラムを書くのが趣味という訳でもないので、プログラムプレゼンテーションは割と苦手なのですが、今回は、過去に作った便利Emacs Lispをプレゼンして場をしのぎました。
</p>
<p>
  アイデアとしては、ファイルを
  <blockquote>
    file-2009-09-26.txt
  </blockquote>
  のように命名規則を設けて作成するようにし(これもElispで生成するようにする)、その規則を元に前の日のファイルを開いたり、次の日のファイルを編集したりするのをスムースにする、というものです。
  <br />
  →
  <a href='http://gist.github.com/13417'>
    gist: 13417 - GitHub
  </a>
  <br />
  この例では、前のファイルに移動するキーとしてsuper+p次のファイルがsuper+nという風に割り当てみています。
  <br />
  単純なアイデアの割には便利ですので、お使いの環境でもっと洗練/発展させてみて下さい
</p>"
 :AUTHOR "chiba" :DATE 3462883892 :CATEGORY "プログラムプレゼンテーション")
(:PATH "/3463977650" :TITLE "ブログもどき的、あまりにもブログもどき的" :BODY "
<p>
  chibaです。
</p>
<p>
  今回のプログラム・プレゼンテーションのネタはこのブログもどきについてです。
そもそもは、ちょっと変ったことをしてみようということで、技術方面のブログはCLで作ってみようということになりました。
</p>
<p>
  構成は、
  <ul>
    <li>
      CL処理系: SBCL
    </li>
    <li>
      AllegroServe(RubyでいうWEBrickのようなもの)
    </li>
  </ul>
  という風になっています。
</p>
<p>
  SBCL処理系は、ライブラリをロードした状態の処理系のメモリイメージを実行可能ファイルとしてダンプできるのですが、適当に手元のノートPCでAllegroServe(CLのウェブサーバー)をロードした状態でダンプしたものを、さくらサーバーに置いたところ動いてしまったので、そのまま動かすことにしました。(x86の実行ファイルです)
</p>
<p>
  場当たり的に作っていく中で色々な問題に遭遇しました。
  <ul>
    <li>
      AllegroServeだとサーバーの処理系を大文字と小文字を区別するように設定することが前提になっているのでそうしないと色々困る。
    </li>
    <li>
      AllegroServeをAllegro CL上で動かさない場合、日本語の扱いに難がある
    </li>
  </ul>
  等々、割と根本的なところに問題があったりします。
  <br />
  <a href='http://weitz.de/hunchentoot/'>
    HUNCHENTOOT
  </a>
  というサーバーもちょっと試てみたのですが、上記のような問題はないので、こちらに乗り換えたいところです
</p>"
 :AUTHOR "chiba" :DATE 3463977650 :CATEGORY "プログラムプレゼンテーション")
(:PATH "/3463978702" :TITLE "さようならsed、こんにちはCommon Lisp" :BODY "
<p>
  chibaです。
</p>
<p>
  今回のプログラム・プレゼンテーションのネタは日常で使うちょっとしたスクリプトをCommon Lispでやってみようというものです。
</p>
<p>
  ネタ切れなので自分の
  <a href='http://cadr.g.hatena.ne.jp/g000001/20091003/1254580668'>
    ブログに書いたネタ
  </a>
  を再演しつつ、ブログでは紹介してなかったwgetも併せて動かしてみました
  <li>
    <a href='http://gist.github.com/204860'>
      適当なwget
    </a>
  </li>
</p>
<p>
  Software ToolsのごとくCommon Lisp上にユーティリティを作成して行けば、Common Lispだけでこういう細かい仕事はできるようになるやもしれません。
</p>"
 :AUTHOR "chiba" :DATE 3463978702 :CATEGORY "プログラムプレゼンテーション")
(:PATH "/3466487639" :TITLE "StumpWMは便利です" :BODY "
<p>
  今回のプログラム・プレゼンテーションのネタはStumpWMです。
StumpWMはタイル型ウィンドウマネージャーなのですが、Common LISPで色々と拡張することができるのが特長です。
</p>
<p>
  今回は、このちょっとしたカスタマイズネタや使い方です。
</p>
<p>
  Actindi社内では現在全面的にRedmineで仕事を管理していて、仕事の確認/依頼もチケット番号ですることが非常に多いです。
  <br />
  いつもチケットの番号でやりとりするのですが、伝えられた番号をぱっと開きたいことが多いので、これをStumpWMで便利にしてみようということで工夫してみました
</p>
<pre>
  
(DEFPARAMETER *LAST-TICKET* NIL)

(DEFCOMMAND SHOW-TICKET (TICKET-NUMBER) ((:STRING \"Ticket#: \"))
  (WHEN (RUN-SHELL-COMMAND 
         (FORMAT NIL 
                \"/usr/bin/firefox \"https://redmine.example.com/issues/show/~A\\\"\"
                 TICKET-NUMBER))
   (SETQ *LAST-TICKET* TICKET-NUMBER)))

(DEFCOMMAND EDIT-IT () ()
  (RUN-SHELL-COMMAND
    (FORMAT NIL
            \"/usr/bin/firefox \"https://redmine.example.com/issues/edit/~A\\\"\"
            *LAST-TICKET*)))
</pre>
<p>
  非常にでっちあげ感の漂う適当なコードですが、show-ticket 1234という風に実行すると、Redmineの1234番のチケットがfirefoxで表示されます。
  <br />
  edit-itコマンドは保存していた直前のチケット番号を編集状態で開くという単純なものです。
  ちょっとした工夫ですが、割と便利で愛用しています。
  <br />
  といった具合で、その他、StumpWMの機能の説明をして1時間をしのぎました。
  <br />
  みなさんもご興味あれば、StumpWMをお試しあれ。
</p>"
 :AUTHOR "chiba" :DATE 3466487639 :CATEGORY "プログラムプレゼンテーション")
(:PATH "/3470616064" :TITLE "Hunchentoot になりました" :BODY "<p>
こんにちは。12月からメンバにくわわった tahara と申します。<br />
chiba さんの念願でした、このブログの AllegroServe から <a href=\"http://weitz.de/hunchentoot/\">Hunchentoot</a> への移行を行いました。<br />
既に chiba さんが Hunchentoot への移植はやってくれていたので
<a href=\"http://common-lisp.net/project/elephant/\">Elephant</a>
の導入がメイン作業でした。
Elephant は Common Lisp のオブジェクトデータベースです。バックエンドは色々選べるのですが、今回は SQLite3 を使いました。
</p>
<p>
現在このブログは次のような構成で動いています。
<ul>
  <li><a href=\"http://www.sbcl.org/\">Steel Bank Common Lisp (SBCL) </a></li>
  <li><a href=\"http://weitz.de/hunchentoot/\">Hunchentoot</a></li>
  <li><a href=\"http://common-lisp.net/project/elephant/\">Elephant</a></li>
  <li><a href=\"http://www.sqlite.org/\">SQLite3</a></li>
  <li><a href=\"http://weitz.de/cl-who/\">CL-WHO</a></li>
</ul>
</p>
<p>
それでは、今後ともよろしくお願いいたします。
</p>
"
 :AUTHOR "tahara" :DATE 3470616064 :CATEGORY "blog制作")
(:PATH "/3472257910" :TITLE "Webプログラマーチュートリアル" :BODY
 "<p>ニコ生はじめました。komagataです。</p>

<p>新しくtaharaさんをメンバーに加えて、毎日持ち回りでこのブログを更新していくことになりました。</p>

<p>火曜日：komagata<br />
水曜日：masudaさん<br />
木曜日：chibaさん<br />
金曜日：taharaさん</p>

<p>このような曜日担当で更新してきます。忘れていたら罵倒してください・・・。</p>

<p>ほとんどtaharaさんが書いてくれたのですが、Webプログラマーチュートリアルを作りました。</p>

<p><a href=\"http://code.google.com/p/web-programmer-tutorial/\">web-programmer-tutorial - Project Hosting on Google Code</a></p>

<p>何らかのプログラム経験さえあれば、これをみて自習するだけで業務するのに必要なスキルが習得できるように、ゴールと参考URL・書籍の一覧を用意しました。</p>

<p>入社した最初の一ヶ月を研修期間としてこれをやることにしました。（やりながらメニュー自体も改善する）</p>

<p>これならば自宅を警備しながらスキルを付けることが出来るのではないかと期待しております。</p>

<p>OJTのみになってしまっているのを改善したいITベンチャーの方や自宅警備員の方でこれを使ってわからないところがあれば全力で支援いたします。</p>"
 :AUTHOR "komagata" :DATE 3472257910 :CATEGORY "プログラミング")
(:PATH "/3472341020" :TITLE "Delaunay Tessellation for iPhone" :BODY
 "<p>こんにちは！！！<br />
今まで更新しろとせっつかれていたのにもかかわらず、全然更新しなかったmasudaです。</p>

<p>とりあえず最初は今までやったのにアップロードしていなかったプログラムプレゼンテーションのネタを書こうかなと思います。</p>

</p>過去の部分はこちらを参考にしてください。</p>

</p>第1回 <a target=\"_blank\" href=\"http://www.cocoalife.net/2009/07/post_839.html\">cocoa*life - Apple Push Notification Serviceを利用した、iPhone クライアントと、Rubyによるサーバの作成。</a></p>

<p>第3回 <a target=\"_blank\" href=\"http://www.cocoalife.net/2009/09/post_845.html\">cocoa*life - Grand Central Dispatchを試してみる。</a></p>

<p>以下、同様にblogに載せようと思って途中でやめていたものを載せようと思います。</p>

<p><a target=\"_blank\" href=\"http://docs.komagata.org/4191\">プログラムプレゼンテーション</a>の第2回は、iPhoneを用いてDelaunay分割をするというものにしてみました。</p>

<p>本当は他のものをやるつもりだったのですが、<a target=\"_blank\" href=\"http://www.cocoalife.net/2009/07/post_839.html\">前回のプログラムプレゼンテーション</a>では<a target=\"_blank\" href=\"http://www.komagata.org/\">komagataさん</a>がObjective-Cのキメラさ、カオスさをおもしろがっていたと勝手に仮定して、Objective-C++でさらなるカオスさを目指すことにしました。</p>

<p>そんな折りに<a target=\"_blank\" href=\"http://www.cocoalife.net/2008/03/post_539.html\">以前ドロネー分割をするためのプログラムをつくって、アップロードしようかなといっていた</a>のを思い出しました。</p>

<p>ということで、今回はそれを流用することにしました。<br />
単純に移植するだけだから簡単だろと思ったところ、意外と手直しに時間がかかってしまいました。</p>

<p>ドロネー分割については計算幾何学で出てくるものですが、この余白はそれを書くのにはせますぎるということで、ググればきっとわかる！！！</p>

<p><a target=\"_blank\" href=\"http://bitbucket.org/milkcocoa/delaunay/\">ソースコードはこちら</a>です。<br />
ライブラリとして<a target=\"_blank\" href=\"http://www.boost.org/\">Boost C++ Libraries</a>を使用しています。</p>

<p>実行すると、毎回ランダムな10点を作成し、下図のようにドロネー分割された図が表示されます。</p>

<p><a href=\"http://www.cocoalife.net/wp-content/uploads/2010/01/1301.png\"><img class=\"alignnone\" title=\"Delaunay tessellation\" src=\"http://www.cocoalife.net/wp-content/uploads/2010/01/1301.png\" alt=\"Delaunay tessellation\" width=\"240\" /></a>　　　<a href=\"http://www.cocoalife.net/wp-content/uploads/2010/01/1302.png\"><img class=\"alignnone\" title=\"Delaunay tessellation with circumcircles\" src=\"http://www.cocoalife.net/wp-content/uploads/2010/01/1302.png\" alt=\"Delaunay tessellation with circumcircles\" width=\"240\" /></a></p>

<p>右側の図は外接円も表示させた場合です。<br />
ドロネー分割では生成された三角形によって作られる外接円の中に、その三角形以外の点が含まれてはいけません。</p>

<p>ランダムな点を生成する部分にはboost::randomを用い、ドロネー分割を計算する部分はC++で書かれています。</p>

<p>Objective-CとC++のコードを混ぜる場合の注意点は、HMDTさんによくまとめられているのでこちらを参照していただくのがよいかと思います。<br />
<a target=\"_blank\" href=\"http://homepage.mac.com/mkino2/spec/objectiveC++/objectiveC++.html\">HMDT &#8211; Objective-C++</a></p>

<p>Objective-C++のソースを書かれるときは、.mとなっている拡張子を.mmにしてくださいね。<br />
自分はこれをしないでObjective-C++のファイルだと認識されずはまりまくりました。</p>

<p>こんな風にC++のコードも簡単に使用することができるので、Objective-Cを使われている皆様もぜひ組み合わせてみてはいかがでしょうか？？？</p>

<p>P.S.<br />
本当はNSOperationを使って、スレッドを新しく作ってバックグラウンドで処理をしたかったのですが、プログラムの構造上面倒なのでやめました。</p>

<p>参考<br />
<a target=\"_blank\" href=\"http://developer.apple.com/jp/documentation/Cocoa/Conceptual/ObjectiveC/3objc_language_overview/chapter_7_section_10.html\">Objective-C プログラミング言語：C++ と Objective-C の併用</a><br />
<a target=\"_blank\" href=\"http://homepage.mac.com/mkino2/spec/objectiveC++/objectiveC++.html\">HMDT &#8211; Objective-C++</a></p>"
 :AUTHOR "masuda" :DATE 3472341020 :CATEGORY "プログラムプレゼンテーション")
(:PATH "/3472464385" :TITLE "Geohash" :BODY "こんにちは、chibaです。
昨晩は、弊社技師同僚間のTwitterで、Geohashの話題が盛り上っておりました。
話に混ざれずに疎外感を感じつつ就寝しようとしたのですが、ふと、会話中で示されていたGeohashの説明のページを眺めたところ、仕組みが分かるようで、分からないような、微妙にもどかしい感じだったので、だらだらと説明のとおりに上から順にコードを書いてみることにしました。
<li><a href=\"http://en.wikipedia.org/wiki/Geohash\">Geohash - Wikipedia, the free encyclopedia</a></li>
そんな感じで、説明の順番のとおりに書いてできたコードが下記です。
なんとなく仕組みは分かったけど、そういえば、エンコード手順の説明は書いてないんだなあ…、と自分勝手なことを考えながら就寝しました。
<pre>
(defpackage :geohash
  (:use :cl)
  (:import-from :shibuya.lisp
                :$ :$*))

(in-package :geohash)

(defun tr (from to string)
  (map 'string 
       (lambda (c)
         (or (some (lambda (x y) 
                     (and (char-equal x c) y))
                   from to)
             (char-upcase c)))
       string))

(defun 5bits (string)
  (map 'list
       ($ format nil \"~5,'0,B\" 
          $ read-from-string 
          $ format nil \"#32R~A\" 
          $ tr \"0123456789BCDEFGHJKMNPQRSTUVWXYZ\" 
               \"0123456789ABCDEFGHKJKLMNOPQRSTUV\" 
          $ string $)
       string))

(defun longitude-latitude (strings)
  (let ((bit-c-list ($* concatenate 'list strings)))
    (loop :for c :in bit-c-list
          :for i :from (if (char= #\\0 (car bit-c-list)) 0 1)
          :if (evenp i) :collect c :into even
          :else :collect c :into odd
          :finally (return 
                     (list :longitude
                           (coerce even 'string) 
                           :latitude
                           (coerce odd 'string))))))

(defun bitlist (string)
  (map 'list ($ parse-integer $ string $) 
       string))

(defun decode (bits min mid max)
  (if (endp bits)
      mid
      ($* decode 
          (cdr bits)
          (if (zerop (car bits))
              (list min (/ (+ mid min) 2) mid)
              (list mid (/ (+ mid max) 2) max)))))

(defun decode-geohash (string)
  (let* ((u ($ longitude-latitude $ 5bits string))
         (lon (getf u :longitude))
         (lat (getf u :latitude)))
    (list 
     :longitude 
     ($ float $ decode (bitlist lon) -90 0 90)
     :latitude
     ($ float $ decode (bitlist lat) -180 0 180))))

(decode-geohash \"u4pruydqqvj\")
;⇒ (:LONGITUDE 57.64911 :LATITUDE 10.407439)
</pre>
"
 :AUTHOR "chiba" :DATE 3472464385 :CATEGORY "疎外感")
(:PATH "/3472528762" :TITLE "autotest-stumpwm" :BODY "<p>こんにちは!! tahara です。</p>

<p>script/autospec の結果を表示してくれる Growl がうらやましいのですが、私
の使っているのは Linux です。しかし、Linux には <a href=\"http://www.nongnu.org/stumpwm/\">Stumpwm</a> があります。
Stumpwm の stumpish を使えば echo でメッセージを表示することができます。</p>

<p>そこで script/autospec の結果を Stumpwm で表示する gem を作ってみます。</p>

<p>参考サイト</p>

<ul>
<li><a href=\"http://route477.net/d/?date=20091019#p02\">Route 477 - モナドって結局なんなの , gemcutterの使い方まとめ (2009年秋)</a></li>
<li><a href=\"http://d.hatena.ne.jp/seiunsky/20090723/1248357767\">jeweler でらくらく rubygems 作成（github編） - まさにっき（コードで世界を変えたい人の記録）</a></li>
<li><a href=\"http://route477.net/d/?date=20090522#p01\">Route 477 - gemspecの作り方がわからない？ならばjewelerだ</a></li>
<li><a href=\"http://github.com/technicalpickles/jeweler\">technicalpickles's jeweler at master - GitHub</a></li>
<li><a href=\"http://github.com/svoop/autotest-growl\">svoop's autotest-growl at master - GitHub</a></li>
</ul>

<p>gem を作るには Jeweler を使うのがよさそうです。
Jeweler は GitHub の API を使うようなので、まずその設定を行います。
user_name と api_token には自分の Username と API Token を指定します。</p>

<pre class=\"example\">
git config --global github.user user_name
git config --global github.token api_token
</pre>

<p>Jeweler をインストールしてプロジェクトを作ってみます。</p>

<pre class=\"example\">
gem install jeweler
jeweler --rspec --create-repo autotest-stumpwm
</pre>

<p>これで綺麗にプロジェクトが作成されます。
おまけに GitHub にリポジトリまでできています。</p>

<p>次に Rakefile を編集します。TODO になっている次の二箇所を適当に編集すればよさそうです。
あと依存する gem も指定しておきます。</p>

<pre class=\"src\">
    gem.summary = %<span style=\"color: #98fb98;\">Q</span>{<span style=\"color: #98fb98;\">TODO</span>: one-line summary of your gem}
    gem.description = %<span style=\"color: #98fb98;\">Q</span>{<span style=\"color: #98fb98;\">TODO</span>: longer description of your gem}
    gem.add_dependency <span style=\"color: #ffa07a;\">\"autotest-growl\"</span>, <span style=\"color: #ffa07a;\">\">= 0.1.7\"</span>
</pre>

<p>次に lib の下のファイルに Stumpwm を使って script/autospec の結果を表示するたコードを書きます。
コードが出きたら次のようにリリースします。</p>

<pre class=\"example\">
rake version:write
rake gemspec
rake release
</pre>

<p>これだけで Gemcutter にも自動的に公開されます。
Jeweler すばらしい!!</p>

<p>修正したら git commit して、次のいずれかでバージョンをあげ rake release するだけ。</p>

<pre class=\"example\">
rake version:bump:major              # Bump the gemspec by a major version.
rake version:bump:minor              # Bump the gemspec by a minor version.
rake version:bump:patch              # Bump the gemspec by a patch
</pre>

<p>できあがった autotest-stumpwm を使うには gem install autotest-stumpwm して、
~/.autotest に次の一行を書きます。これで autospec と Stumpwm の幸せな生活がおくれます。</p>

<pre class=\"src\">
require <span style=\"color: #ffa07a;\">'autotest/stumpwm'</span>
</pre>

<p>さて、一番大切な Stumpwm で結果を表示するコードですが、</p>

<pre class=\"src\">
<span style=\"color: #ff7f24;\"># </span><span style=\"color: #ff7f24;\">-*- coding: undecided -*-
</span>require <span style=\"color: #ffa07a;\">'rubygems'</span>
require <span style=\"color: #ffa07a;\">'autotest/growl'</span>

<span style=\"color: #00ffff;\">module</span> <span style=\"color: #98fb98;\">Autotest</span>::<span style=\"color: #98fb98;\">Growl</span>
  <span style=\"color: #00ffff;\">def</span> <span style=\"color: #87cefa;\">self.growl</span>(title, message, icon, priority=0, stick=<span style=\"color: #ffa07a;\">\"\"</span>)
    priority = <span style=\"color: #00ffff;\">if</span> priority > 0  <span style=\"color: #ff7f24;\"># </span><span style=\"color: #ff7f24;\">error or feailed
</span>                 1              <span style=\"color: #ff7f24;\"># </span><span style=\"color: #ff7f24;\">red
</span>               <span style=\"color: #00ffff;\">elsif</span> priority == -2 <span style=\"color: #ff7f24;\"># </span><span style=\"color: #ff7f24;\">passed
</span>                 2                  <span style=\"color: #ff7f24;\"># </span><span style=\"color: #ff7f24;\">green
</span>               <span style=\"color: #00ffff;\">else</span>
                 3              <span style=\"color: #ff7f24;\"># </span><span style=\"color: #ff7f24;\">yellow
</span>               <span style=\"color: #00ffff;\">end</span>
    system <span style=\"color: #ffa07a;\">\"stumpish echo ^</span><span style=\"color: #eedd82;\">#{priority}</span><span style=\"color: #ffa07a;\">* </span><span style=\"color: #eedd82;\">#{title}</span><span style=\"color: #ffa07a;\"> </span><span style=\"color: #eedd82;\">#{message}</span><span style=\"color: #ffa07a;\">\"</span>
  <span style=\"color: #00ffff;\">end</span>
<span style=\"color: #00ffff;\">end</span>
</pre>
ごめんなさい autotest-growl にモンキーパッチをあてただけです。
"
 :AUTHOR "tahara" :DATE 3472528762 :CATEGORY "Stumpwm")
(:PATH "/3472868530" :TITLE "テストを通らないリリースを止めるライブラリ" :BODY
 "<p>昼にキリンフリーを飲むと機嫌が良くなる火曜日担当のkomagataです。</p>
<p>rspecのテストが通らないとデプロイを止めてしまうcapistranoのレシピのgemを作りました。</p>
<blockquote><a href=\"http://www.gemcutter.org/gems/showstopper\">showstopper
0.1.0</a>
<p>ShowStopper is capistrano recipe that stop deploy when rspec is red.</p>
</blockquote>
<h3>インストール</h3>
<pre><code>$ sudo gem install showstopper -s http://gemcutter.org</code></pre>
<p>Capfileの中で読み込むだけで設定完了です。</p> 
<pre><code>$ vi Capfile
(...)
require 'showstopper'</code></pre>
<p>これでrspecが通ってないのに誰かがデプロイしようとすると・・・</p>
<pre><code>% cap deploy
(...)
  * == Currently executing `deploy'
    triggering before callbacks for `deploy'
  * == Currently executing `deploy:spec'
    rspec test failed</code></pre>
<p>showstopperがデプロイを中止してしまいます！</p>
<p>これを投入していい加減なテストのあるプロジェクトを恐怖のどん底に陥れてやりましょう！</p>"
 :AUTHOR "komagata" :DATE 3472868530 :CATEGORY "ruby")
(:PATH "/3472988345" :TITLE "Objective-C的？？？Geohash" :BODY "<p>こんにちは！<br />
はまっている時間はたいていRSpecに起因するものなのではないかと以前から感じているmasudaです。<br />
なんとか約束の火曜日に間に合ったでしょうか？？？</p>

<p>先日<a href=\"http://tech.actindi.net/3472464385\">chibaさんがGeohashをdecodeするものをCLで書いていらした</a>ので、それを微妙に参考にしながらCocoaのCoreLocationのCLLocationにgeohashをencode/decodeするメソッド追加してみました。</p>

<p>本当はビット演算がしたいのですが、文字列処理の方が自分には単純で簡単だったため、とりあえず今回は文字列処理にしてみました。</p>

<p>我ながらひどいコードだと思いますので、これからリファクタリングをしていきたいところです。</p>

<p>[CLLocation+Geohash.h]</p>
<pre>
#import &lt;CoreLocation/CoreLocation.h&gt;
#import &lt;Foundation/Foundation.h&gt;


@interface CLLocation(Geohash)

@property (nonatomic, readonly)   NSString    *geohash;

+ (CLLocation *)locationFromGeohash:(NSString *)aGeohash;

@end
</pre>

<p>[CLLocation+Geohash.m]</p>
<pre>
#import \"CLLocation+Geohash.h\"

#include &lt;math.h&gt;

NSString *int_to_binary(NSUInteger input)
{
    if (input == 1 || input == 0)
    {
        return [NSString stringWithFormat:@\"%d\", input];
    }

    return [NSString stringWithFormat:@\"%@%d\", int_to_binary(input / 2), input % 2];
}


double parse_binary(NSString *binary, double max, double min)
{
    double mid = 0.0;
    
    for (NSUInteger i = 0; i < [binary length]; ++i)
    {
        if ([binary characterAtIndex:i] == '1')
        {
            min = mid;
        }
        else
        {
            max = mid;
        }
        
        mid = (max + min) / 2;
    }
    
    return mid;
}


NSUInteger binary_to_int(NSString *input)
{
    NSUInteger result, length;

    result = 0;
    length = [input length];

    for (NSUInteger i = 0; i < length; ++i)
    {
        if ([input characterAtIndex:i] == '1')
        {
            result += pow(2, length - i - 1);
        }
    }

    return result;
}


NSString * generate_binary(double input, double max, double min, int cutoff)
{
    NSMutableString     *result;
    double              mid;

    result = [NSMutableString string];
    for (int i = 0; i < cutoff; ++i)
    {
        mid = (max + min) / 2;

        if (input > mid)
        {
            [result appendString:@\"1\"];
            min = mid;
        }
        else
        {
            [result appendString:@\"0\"];
            max = mid;
        }
    }

    return [NSString stringWithString:result];
}


@implementation CLLocation(Geohash)

- (NSString *)geohash
{
    int cutoff = 15;
    NSString *base32_characters  = @\"0123456789bcdefghjkmnpqrstuvwxyz\";

    NSString            *bin_lat, *bin_lng;
    NSMutableString     *bin_packed, *result;
    
    bin_lat = generate_binary([self coordinate].latitude, 90.0, -90.0, cutoff);
    bin_lng = generate_binary([self coordinate].longitude, 180.0, -180.0, cutoff);

    bin_packed = [NSMutableString string];

    for (int i = 0; i < [bin_lat length]; ++i)
    {
        [bin_packed appendFormat:@\"%c%c\", [bin_lng characterAtIndex:i], [bin_lat characterAtIndex:i]];
    }

    result = [NSMutableString string];

    // extract by 5-bit.
    for (int i = 0; i < [bin_packed length] / 5; ++i)
    {
        NSUInteger index;
        index = binary_to_int([bin_packed substringWithRange:NSMakeRange(i * 5, 5)]);
        [result appendFormat:@\"%c\", [base32_characters characterAtIndex:index]];
    }

    return result;
}


+ (CLLocation *)locationFromGeohash:(NSString *)aGeohash
{
    NSString *base32_characters  = @\"0123456789bcdefghjkmnpqrstuvwxyz\";

    NSMutableString *bin_packed, *bin_lat, *bin_lng;

    bin_packed = [NSMutableString string];

    for (NSUInteger i = 0; i < [aGeohash length]; ++i)
    {
        NSString *character;
        character = [[NSMutableString stringWithFormat:@\"%c\", [aGeohash characterAtIndex:i]] lowercaseString];

        for (NSUInteger j = 0; j < [base32_characters length]; ++j)
        {
            if ([character isEqualToString:[NSString stringWithFormat:@\"%c\", [base32_characters characterAtIndex:j]]])
            {
                NSMutableString *binary;
                binary = [NSMutableString stringWithFormat:@\"%@\", int_to_binary(j)];

                NSUInteger length = [binary length];
                for (NSUInteger k = 0; k < 5 - length; ++k)
                {
                    [binary insertString:@\"0\" atIndex:0];
                }

                [bin_packed appendString:binary];
                break;
            }
        }
    }

    bin_lat = [NSMutableString string];
    bin_lng = [NSMutableString string];

    for (NSUInteger i = 0; i < [bin_packed length]; ++i)
    {
        if (i % 2)
        {
            // a latitude is composed of odd bits. 
            [bin_lat appendFormat:@\"%c\", [bin_packed characterAtIndex:i]];
        }
        else
        {
            // a longitude is composed of even bits.
            [bin_lng appendFormat:@\"%c\", [bin_packed characterAtIndex:i]];
        }
    }

    return [[CLLocation alloc] initWithLatitude:parse_binary(bin_lat, 90.0, -90.0)
                                      longitude:parse_binary(bin_lng, 180.0, -180.0)];
}


@end
</pre>

<p>NSStringでかなり遅いcharacterAtIndexを使いまくっている。</p>

<h2>参考</h2>
<p><a href=\"http://en.wikipedia.org/wiki/Geohash\">Geohash - Wikipedia, the free encyclopedia</a><br/>
<a target=\"_blank\" href=\"http://d.hatena.ne.jp/yuroyoro/20100115/1263526125\">GeoHashのdecodeのアルゴリズムの解説します & ScalaのGeoHashライブラリを作ってみました(仮) - ゆろよろ日記</a></p>"
 :AUTHOR "masuda" :DATE 3472988345 :CATEGORY "Objective-C")
(:PATH "/3473072867" :TITLE "Rubyの好きなところ" :BODY "こんにちは、chibaです!
私はCommon Lispからプログラミングを始めたせいか返り値を使ったプログラミングスタイルが好きなのですが、Rubyは多値と配列と可変長引数が統合されたようになっていて、なかなか使い勝手が良く、Rubyの好きなところの一つです。いまのところ一つです。
<pre>
x = 3
[0, *if x.even?
       [1, 2, 3]
     else
       [:a, :b, :c]
     end]

;⇒ [0, :a, :b, :c]
</pre>
<pre>
def iota(n)
  if n.zero?
    0
  else
    [n, *iota(n - 1)]
  end
end

iota(10)
;⇒ [10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0]
</pre>
<pre>
Proc.new do |x, y| x * y;end [100,2]
;⇒ 200
</pre>
LISP/Schemeでも、書けるといえば書けるのですが、
<pre>
;; Common LISP
(let ((x 3))
  `#(0 ,@(if (evenp x)
             '(1 2 3)
             '(:a :b :c))))
;⇒ #(0 :A :B :C)

(defun iota (n)
  (if (zerop n)
      (list 0)
      `(,n ,@(iota (1- n)))))

;⇒ (10 9 8 7 6 5 4 3 2 1 0)

(multiple-value-call #'* (values-list '(100 2)))
;⇒ 200

;; もしくは
(apply #'* '(100 2))
;⇒ 200
</pre>
Rubyの方が統一感があって良いですね。
"
 :AUTHOR "chiba" :DATE 3473072867 :CATEGORY "Common LISP 愛")
(:PATH "/3473158189" :TITLE "Lisp on Rails 第1回" :BODY
 "<p class=\"first\">こんばんは!! tahara です。</p>

<p>いま仕事で Ruby on Rails を使っています。
正直 Active Record いいっすねー。
DB いじるには楽です。</p>

<p>くやしいので Common Lisp でそれっぽいのを実装してみます。
Lisp on Rails ですね(何だか以前から聞く言葉のような気もします)。</p>

<p>第1回目の今日は何となく Active Record っぽい雰囲気のような感じだけです。</p>

<pre class=\"src\">
(<span style=\"color: #00ffff;\">eval-when</span> (<span style=\"color: #b0c4de;\">:compile-toplevel</span> <span style=\"color: #b0c4de;\">:load-toplevel</span> <span style=\"color: #b0c4de;\">:execute</span>)
  (setf *connection-spec* '(<span style=\"color: #ffa07a;\">\"localhost\"</span> <span style=\"color: #ffa07a;\">\"blog_test\"</span> <span style=\"color: #ffa07a;\">\"root\"</span> <span style=\"color: #ffa07a;\">\"\"</span>))
  (setq clsql-sys:*default-database-type* <span style=\"color: #b0c4de;\">:mysql</span>)
  (establish-connection))

<span style=\"color: #ff7f24;\">;; </span><span style=\"color: #ff7f24;\">レコードの定義
</span>(def-record post)
<span style=\"color: #ff7f24;\">;; </span><span style=\"color: #ff7f24;\">インサート
</span>(save (make-instance 'post <span style=\"color: #b0c4de;\">:name</span> <span style=\"color: #ffa07a;\">\"名前\"</span> <span style=\"color: #b0c4de;\">:title</span> <span style=\"color: #ffa07a;\">\"タイトル\"</span> <span style=\"color: #b0c4de;\">:content</span> <span style=\"color: #ffa07a;\">\"内容\"</span>))
<span style=\"color: #ff7f24;\">;; </span><span style=\"color: #ff7f24;\">検索
</span>(all post)
</pre>

<p>ソースはこちらから <a href=\"http://github.com/quek/lisp-on-rails\">http://github.com/quek/lisp-on-rails</a></p>

<p>第2回につづきます</p>
"
 :AUTHOR "tahara" :DATE 3473158189 :CATEGORY "Lisp on Rails")
(:PATH "/3473481089" :TITLE "Real (World) Git" :BODY "<p>火曜日担当のkomagataです。</p>

<p>gitよく分からないのでどういう風に使ってるのかデモってくれと言われたので実際に仕事のコードにコミットしてみました。</p>

<p><strong>実録！git!</strong></p>

<p>アクトインディでは「子供とのお出かけ先を探すサイト」<a href=\"http://iko-yo.net\">いこーよ</a>（<a href=\"http://iko-yo.net\">http://iko-yo.net</a>）というサイトを運営しています。
リポジトリはデザイナーさんが<a href=\"http://www.adobe.com/jp/products/dreamweaver/\">Dreamweaver</a>や<a href=\"http://www.panic.com/jp/coda/\">Coda</a>のsvnクライアントを使うのでSubversionです。</p>

<p>svnの最新リビジョンだけを持ってくる。（全部持ってくると死ぬほど時間がかかる。）</p>

<pre><code>% git svn clone -r HEAD https://svn.actindi.net/svn/oyaiku/trunk/outing outing --username=komagata</code></pre>

<p>Redmineのチケットを見る。
予め仕込んでおいた簡単そうなチケットを発見。（redmineではイシューというみたいです）</p>

<a href=\"http://www.flickr.com/photos/komagata/4305432544/\" title=\"いこーよ - 新機能 #3487: cityモデルのテストを書く - Redmine（タスク管理） by komagata, on Flickr\"><img src=\"http://farm3.static.flickr.com/2752/4305432544_d7c960ee7f.jpg\" width=\"500\" height=\"303\" alt=\"いこーよ - 新機能 #3487: cityモデルのテストを書く - Redmine（タスク管理）\" /></a>

<p>チケットに対応したブランチを作る。</p>

<pre><code>% git branch issue3487</code></pre>

<p>作業ブランチを切り替える。</p>

<pre><code>% git checkout issue3487</code></pre>
（git branch foo; git checkout fooはgit checkout -b fooと同じ）

<p>ブランチ確認。</p>

<pre><code>% git branch
  master
* issue3487</code></pre>

<p>shouldaスタイルのマクロが使いたいのでremarkableを入れる。</p>

<pre><code># config/environment.rb
Rails::Initializer.run do |config|
  config.gem 'remarkable_rails', :lib => false
end</code></pre>

<pre><code># spec/spec_helper.rb
require 'spec/rails' # ここの下に書く
require 'remarkable_rails'</code></pre>

<pre><code>% sudo rake gems:install
% rake gems:unpack
% rake gems:refresh_spec</code></pre>

<p>一旦、コミット。</p>

<pre><code>% git add vendor vendor/gems/remarkable_rails-3.1.12
% git commit -a -m'added remarkable'</code></pre>

<p>app/model/city.rbのテストを作る。</p>

<pre><code># app/model/city.rb
class City < ActiveRecord::Base
  belongs_to :prefecture

  validates_presence_of :name, :reading, :roman
  validates_length_of :name, :within => 1..40
  validates_length_of :reading, :within => 1..40
  validates_length_of :roman, :within => 1..40
  validates_uniqueness_of :roman
end</code></pre>

<pre><code># spec/models/city_spec.rb
require 'spec_helper'

describe City do
  fixtures :cities

  should_belong_to :prefecture
  should_validate_presence_of :name
  should_validate_presence_of :reading
  should_validate_presence_of :roman
  should_validate_length_of :name, :within => 1..40
  should_validate_length_of :reading, :within => 1..40
  should_validate_length_of :roman, :within => 1..40
  should_validate_uniqueness_of :roman
end</code></pre>

<p>テスト実行（ホントは全部のテストを実行する）</p>

<pre><code>% ./script/spec spec/models/city_spec.rb

City
- should belong to prefecture
- should require name to be set
- should require reading to be set
- should require roman to be set
- should ensure length of name is within 1..40 characters
- should ensure length of reading is within 1..40 characters
- should ensure length of roman is within 1..40 characters
- should require unique values for roman

Finished in 0.770165 seconds

8 examples, 0 failures</code></pre>

<p>コミット</p>

<pre><code>% git add spec/models/city_spec.rb
% git ci -a -m'added city_spec. fixed #3487'</code></pre>

<p>masterに移る。</p>

<pre><code>% git checkout master</code></pre>

<p>最新版を持ってくる</p>

<pre><code>% git svn rebase</code></pre>

<p>issue3487をマージする</p>

<pre><code>% git merge issue3487</code></pre>

<p>svnにコミット。</p>

<pre><code>% git svn dcommit</code></pre>

<p>完了。</p>

<p><strong>その他の便利機能</strong></3>

<p><strong>いっこ前のコミットなかったことにする</strong></p>

<pre><code>% git reset HEAD^</code></pre>

<p><strong>昔のコミットを修正したい</strong></p>

<pre><code>% git log --oneline
c5524b2 * removed foo * removed remarkable
460bfa1 [デザイン] TOPページ「外へおでかけ」の変更 (refs #3490) * 谷さん修正分
9b819fd * add city_spec * add remarkable * add foo
695b1eb [システム] [mobile] /facilities/:id のレイアウト変更。 (refs #2899) * いらないhrを削除。</code></pre>

<pre><code>% git rebase -i 695b1eb</code></pre>

<p>エディタが立ち上がるので修正したいリビジョンのpickをeditに変更して終了する。</p>

<pre><code>pick 9b819fd * add city_spec * add remarkable * add foo
pick 460bfa1 [デザイン] TOPページ「外へおでかけ」の変更 (refs #3490) * 谷さん修正分
edit c5524b2 * removed foo * removed remarkable</pre></code>

<p>指定したリビジョンの状態に戻るので好きにaddしたり編集したりする。</p>

<pre><code>% git commit --amend
% git rebase --continue</code></pre>

<p>修正完了</p>

<p><strong>複数の適当なコミットを一つにまとめたい</strong></p>

<pre><code>% git log --oneline
68fb234 add text2 in foo
5cd81d6 add text in foo
43fdcb7 add foo
fb91711 removed old paperclip
aa21e65 fixed</code></pre>

<pre><code>% git rebase -i fb91711
pick 43fdcb7 add foo
pick 5cd81d6 add text in foo
pick 68fb234 add text2 in foo</code></pre>

<p>次のリビジョンとまとめたいリビジョンの先頭をpickからsquashに変える。</p>

<pre><code>pick 43fdcb7 add foo
squash 5cd81d6 add text in foo
squash 68fb234 add text2 in foo</code></pre>

<p>コミットメッセージをいれて終了。</p>

<p>みなさんおっしゃってますが、やはり、svnからgitにして嬉しいのはbranchの作成やcommitが気軽できるところですね。一つの作業をやってる途中に別の優先タスクが入った場合も、現在のbranchをほっぽってすぐにそちらのタスクに移れるのは精神的にもとても楽です。</p>

<p>適当にfixed, fixedなどとコミットしていっても後で綺麗にまとめられるところもいいですね。</p>

<p>gitは他にもいろいろ出来るみたいですが、今のところリアルにこんな感じで使っています。便利な使い方があれば教えて頂けると嬉しいです。</p>"
 :AUTHOR "komagata" :DATE 3473481089 :CATEGORY "git")
(:PATH "/3473547098" :TITLE "Lispに興味がない・・・だと・・・？" :BODY
 "<blockquote><p><a href=\"http://anond.hatelabo.jp/20100125020240\">興味のある言語にLispと書いておいたら面接で爆笑された</a></p>
<p>面接官「Lisp・・・ふははっ！Lisp！」</p>
<p>面接官「Lispやってるんですか？ｗｗｗｗｗ」</p>
<p>俺「(唖然)は、はい・・まだS式を理解したぐらいですが。。」</p>
<p>面接官「Lisp・・・ﾆﾔﾆﾔ」</p></blockquote>
<p>Hunchentootで動いてるこのブログを見て弊社に面接に来た方がCommon Lispに興味なかったらメンバー全員がっかりしますね・・・。</p>"
 :AUTHOR "komagata" :DATE 3473547098 :CATEGORY "lisp")
(:PATH "/3473583175" :TITLE "iPhoneによる位置情報関係のまとめ" :BODY "<p>こんにちは。<br />
先日komagataさんにgit svnの使い方を教えていただいたおかげで、少しは使えるようになってきたmasudaです。</p>

<p>今回も前回のGeohashに引き続き、位置情報に関する内容です。<br />
ググれば出てくる内容なので、新しいことはなんにもないのが申し訳ないところです。</p>

<p>位置情報に関するライブラリは
<ul>
  <li>CoreLocation</li>
  <li>MapKit</li>
</ul>
などがあります。</p>

<p>GPSで現在位置を取得するにはCoreLocationを使用し、地図を表示したり現在地の大まかな住所を取得するためにはMapKitを使用します。</p>

<p>CoreLocationではCLLocationManagerDelegateを実装し</p>
<pre>CLLocationManager *locationManager = [[CLLocationManager alloc] init];
    if ([locationManager locationServicesEnabled])
    {
        [locationManager setDelegate:self];
        [locationManager setDesiredAccuracy:kCLLocationAccuracyBest];
        [locationManager setDistanceFilter:kCLDistanceFilterNone];
    }

- (void)locationManager:(CLLocationManager *)manager didUpdateToLocation:(CLLocation *)newLocation fromLocation:(CLLocation *)oldLocation
{
    NSLog(@\"%@\", newLocation);
}</pre>

<p>このようにすればLogに現在地の情報が取得できます。</p>

<p>地図を表示するには</p>
<pre>CGRect screen = [[UIScreen mainScreen] bounds];
MKMapView *mapView = [[MKMapView alloc] initWithFrame:screen];
[[self view] addSubview:mapView];
[mapView release];

MKCoordinateRegion  region;
region.center = [location coordinate];
region.span.latitudeDelta = 0.005;
region.span.longitudeDelta = 0.005;
[mapView setRegion:region animated:YES];</pre>

<p>とすれば、locationで指定した座標に移動します。</p>

<p>現在地を取得するにはMKReverseGeocoderDelegateを実装し</p>

<pre>MKReverseGeocoder *reverseGeocoder = [[MKReverseGeocoder alloc] initWithCoordinate:[location coordinate]];
[reverseGeocoder setDelegate:self];
[reverseGeocoder start];

- (void)reverseGeocoder:(MKReverseGeocoder *)geocoder didFindPlacemark:(MKPlacemark *)placemark
{
    NSLog(@\"%@\", [placemark title]);
}</pre>

<p>とすることで取得することができます。<br />
すべてのAPIが非常にシンプルに作られているので、使用するのは非常に簡単です。</p>"
 :AUTHOR "masuda" :DATE 3473583175 :CATEGORY "objective-c")
(:PATH "/3473675040" :TITLE "PerlとC++にしかできないような気がした十五の夜" :BODY "こんにちは!、chibaです。
早くも書くネタが無いのですが、どうしたら良いんでしょうか。<br />
今年の私のテーマは「挑戦」。
先日、そんな私にぴったりな、盗んだバイクで走り出したくなる挑戦をみつけました。
<li><a href=\"http://d.hatena.ne.jp/qnighy/20100124/1264342447\">PerlとC++にしかできないような気がするアノ機能(挑戦者募集中)</a></li>
<pre>
#!/usr/bin/perl
# PerlとC++は世界一。

srand(time);

my $a = 0;
my $b = 0;
for(my $i = 0; $i < 1000; $i++) {
    (rand(2)<1 ? $a : $b) += 1;
}
print \"$a, $b\\n\"
</pre>
これをPerlや、C++以外の言語で書けるのか、と。<br />
私は、LISP野郎なのでLISPで回答するとして考えましたが「実行時に変数の名前によって任意の変数にアクセスし、その変数に値を代入できるか」という風にお題を解釈しました。
PerlやC++の場合は、?:にそういう機能があるのでしょう。
Common Lispだとどうなるかというと、「実行時に変数の名前によって任意の変数にアクセス」というのは、シンボル名による変数へのアクセスで可能なので、上をCommon Lispに訳すと
<pre>
(let ((a 0) (b 0))
  (declare (special a b))
  (dotimes (i 1000)
    (incf (symbol-value
           (if (< (random 2) 1) 'a 'b))))
  (format t \"~A, ~A~%\" a b))
;⇒ NIL
----------
499, 501
</pre>
こんな感じに書くことになるのかなあと思いました。<br />
…というようなことをtaharaさんと昼食時に話していたのですが、taharaさん曰くifにsetfが付いてれば可能なんじゃないかとのこと。
なるほど、確かにそうです。<br />
setfというのは代入する構文のマクロなのですが、ユーザーが色々カスタマイズできます。
実行時に変数名でアクセス→代入というのではなく、そういう構文をマクロで定義するわけですね。<br />
ユーザーがifにsetfを書けば良いのですが、これが標準で付いている処理系をどっかでみたなーと思ったので調べてみるとCLISPがそうでした。
CLISPだと標準で
<pre>
(let ((a 0) (b 0))
  (dotimes (i 1000)
    (incf (if (< (random 2) 1) a b)))
  (format t \"~A, ~A~%\" a b))
;⇒ NIL
----------
513, 487
</pre>
と書けます。自分はPerlは書けないのですが、+=をカスタマイズすることによって
<pre>
for(my $i = 0; $i < 1000; $i++) {
    if (rand(2) < 1) { 
      $a 
    } else {
      $b
    } += 1;
}
</pre>
のようにも書けるようにユーザーが勝手に定義できる、という感じでしょうか。<br />
こんなことをしているとすぐカオスになりそうですが、LISPに構文は無いようなものなので特に混乱もなかったりします。LISPは単純で良いですね■
"
 :AUTHOR "chiba" :DATE 3473675040 :CATEGORY "Common LISP愛")
(:PATH "/3473716585" :TITLE "Lisp on Rails 第2回 〜 メタクラス" :BODY
 "<p class=\"first\">こんにちは!! tahara です。
Lisp on Rails 第2回です!</p>

<p>ActiveRecord::Base ではクラスメソッドとして find や all の検索メソッドが定義されています。</p>

<p>Common Lisp でそれらを実装するにあたり、メタクラスのメソッドとして実装してみます。
Common Lisp では自分でメタクラスを定義することができます。
次のようにメタクラスを定義します。
なんとなく、テーブル名とカラム情報を持たせています。</p>

<pre class=\"src\">
(<span style=\"color: #00ffff;\">defclass</span> <span style=\"color: #98fb98;\">active-record-class</span> (standard-class)
  ((%table-name <span style=\"color: #b0c4de;\">:initarg</span> <span style=\"color: #b0c4de;\">:%table-name</span> <span style=\"color: #b0c4de;\">:accessor</span> %table-name-of)
   (%columns <span style=\"color: #b0c4de;\">:initarg</span> <span style=\"color: #b0c4de;\">:%columns</span> <span style=\"color: #b0c4de;\">:accessor</span> %columns-of)))
</pre>
各テーブル毎のクラスはこの active-record-class のインスタンスになり、
インスタンス変数としてテーブル名とカラム情報を持つイメージです。

<p>メタクラスに全レコードを取得する all メソッドを実装します。</p>

<pre class=\"src\">
(<span style=\"color: #00ffff;\">defmethod</span> <span style=\"color: #87cefa;\">all</span> ((class active-record-class))
  (<span style=\"color: #00ffff;\">multiple-value-bind</span> (rows columns)
      (clsql-sys:query (format nil <span style=\"color: #ffa07a;\">\"select * from ~a\"</span> (%table-name-of class)))
    (<span style=\"color: #00ffff;\">loop</span> for i in rows
          collect (make-instance-from-row class i columns))))
</pre>

<p><code>(def-record post)</code> は次のように展開されて
<code>:METACLASS ACTIVE-RECORD::ACTIVE-RECORD-CLASS</code> を指定します。</p>

<pre class=\"src\">
(<span style=\"color: #00ffff;\">PROGN</span>
  (<span style=\"color: #00ffff;\">DEFPARAMETER</span> <span style=\"color: #eedd82;\">POST</span>
    (<span style=\"color: #00ffff;\">DEFCLASS</span> <span style=\"color: #98fb98;\">POST</span> (BASE)
      ((ID <span style=\"color: #b0c4de;\">:INITARG</span> <span style=\"color: #b0c4de;\">:ID</span> <span style=\"color: #b0c4de;\">:INITFORM</span> NIL <span style=\"color: #b0c4de;\">:ACCESSOR</span> ID-OF)
       (NAME <span style=\"color: #b0c4de;\">:INITARG</span> <span style=\"color: #b0c4de;\">:NAME</span> <span style=\"color: #b0c4de;\">:INITFORM</span> NIL <span style=\"color: #b0c4de;\">:ACCESSOR</span> NAME-OF)
       (TITLE <span style=\"color: #b0c4de;\">:INITARG</span> <span style=\"color: #b0c4de;\">:TITLE</span> <span style=\"color: #b0c4de;\">:INITFORM</span> NIL <span style=\"color: #b0c4de;\">:ACCESSOR</span> TITLE-OF)
       (CONTENT <span style=\"color: #b0c4de;\">:INITARG</span> <span style=\"color: #b0c4de;\">:CONTENT</span> <span style=\"color: #b0c4de;\">:INITFORM</span> NIL <span style=\"color: #b0c4de;\">:ACCESSOR</span> CONTENT-OF)
       (CREATED-AT <span style=\"color: #b0c4de;\">:INITARG</span> <span style=\"color: #b0c4de;\">:CREATED-AT</span> <span style=\"color: #b0c4de;\">:INITFORM</span> NIL <span style=\"color: #b0c4de;\">:ACCESSOR</span>
                   CREATED-AT-OF)
       (UPDATED-AT <span style=\"color: #b0c4de;\">:INITARG</span> <span style=\"color: #b0c4de;\">:UPDATED-AT</span> <span style=\"color: #b0c4de;\">:INITFORM</span> NIL <span style=\"color: #b0c4de;\">:ACCESSOR</span>
                   UPDATED-AT-OF))
      (<span style=\"color: #b0c4de;\">:METACLASS</span> ACTIVE-RECORD::ACTIVE-RECORD-CLASS)))
      ...
</pre>
Ruby のクラス定義と違って Common Lisp のクラス定義ではクラス名に何も束縛しないため、
わざわざ <code>defparameter</code> しています。

<p>そんな感じでメタクラスによる</p>

<pre class=\"src\">
(all post)
</pre>
ができました。

<p>ソースはこちらから <a href=\"http://github.com/quek/lisp-on-rails\">http://github.com/quek/lisp-on-rails</a></p>

<p>第3回につづきます</p>
"
 :AUTHOR "tahara" :DATE 3473716585 :CATEGORY "Lisp on Rails")
(:PATH "/3474035399" :TITLE "Metasploit3で脆弱性を検証する（１）" :BODY
 "<a href=\"http://www.flickr.com/photos/komagata/4322220279/\" title=\"Penetration Testing | The Metasploit Project by komagata, on Flickr\"><img src=\"http://farm5.static.flickr.com/4069/4322220279_a93c552a8e_o.jpg\" width=\"300\" height=\"215\" alt=\"Penetration Testing | The Metasploit Project\" /></a>

<p>火曜日担当のkomagataです。</p>

<p>Gumblerウィルスが猛威を振るっているので流行に乗ってセキュリティネタです。</p>

<p>脆弱性検証（というか実際に脆弱性を突くので悪用厳禁）ツールの<a href=\"http://www.metasploit.com/\">Metasploit3</a>をMacで使ってみました。</p>

<p>Macportsのはrb-railsやrb-rackが普通のgemとぶつかって入りません。（port editで依存性を外せば入りましたが気持ち悪いです。）</p>

<p>なので、svnのtrunkを持ってきました。</p>

<pre><code>% svn co https://www.metasploit.com/svn/framework3/trunk metasploit</code></pre>

<p>今回checkoutしたのはrevision8340でした。

<pre><code>% cd metasploit
% ./msfconsole
/Users/komagata/code/metasploit/lib/msf/core/exploit/mixins.rb:46:in `require': /Users/komagata/code/metasploit/lib/msf/core/exploit/capture.rb:358: syntax error, unexpected ')', expecting kEND (SyntaxError)
/Users/komagata/code/metasploit/lib/msf/core/exploit/capture.rb:375: syntax error, unexpected $end, expecting kEND
        from /Users/komagata/code/metasploit/lib/msf/core/exploit/mixins.rb:46
        from /Users/komagata/code/metasploit/lib/msf/core/exploit.rb:216:in `require'
        from /Users/komagata/code/metasploit/lib/msf/core/exploit.rb:216
        from /Users/komagata/code/metasploit/lib/msf/core.rb:52:in `require'
        from /Users/komagata/code/metasploit/lib/msf/core.rb:52
        from /Users/komagata/code/metasploit/lib/msf/ui/console/driver.rb:1:in `require'
        from /Users/komagata/code/metasploit/lib/msf/ui/console/driver.rb:1
        from /Users/komagata/code/metasploit/lib/msf/ui/console.rb:10:in `require'
        from /Users/komagata/code/metasploit/lib/msf/ui/console.rb:10
        from /Users/komagata/code/metasploit/lib/msf/ui.rb:10:in `require'
        from /Users/komagata/code/metasploit/lib/msf/ui.rb:10
        from ./msfconsole:16:in `require'
        from ./msfconsole:16</code></pre>

<p>ところがcoreで読み込んでるファイルがsyntax error。ほぼ全てのコマンドが動きません。</p>

<p>「これは良い<a href=\"http://docs.komagata.org/4451\">コミットエンドラン</a>・・・（ゴクリ）」</p>

<pre><code>% svn diff
Index: lib/msf/core/exploit/capture.rb
===================================================================
--- lib/msf/core/exploit/capture.rb     (revision 8340)
+++ lib/msf/core/exploit/capture.rb     (working copy)
@@ -355,7 +355,7 @@
                rescue RuntimeError => e
                        @pcaprub_error = e
                        print_status(\"Cannot stat device: #{@pcaprub_error}\")
-                       raise RuntimeError, \"Pcaprub error: #{@pcaprub_error}\")
+                       raise RuntimeError, \"Pcaprub error: #{@pcaprub_error}\"
                end
                return my_net
        end</code></pre>

<p>取り敢えずこれで動きますのでお急ぎの方は是非。</p>

<pre><code>% ./msfconsole

                |                    |      _) |   
 __ `__ \\   _ \\ __|  _` |  __| __ \\  |  _ \\  | __| 
 |   |   |  __/ |   (   |\\__ \\ |   | | (   | | |   
_|  _|  _|\\___|\\__|\\__,_|____/ .__/ _|\\___/ _|\\__| 
                              _|                   


       =[ metasploit v3.3.4-dev [core:3.3 api:1.0]
+ -- --=[ 176 exploits - 30 auxiliary
+ -- --=[ 104 payloads - 17 encoders - 5 nops
       =[ svn r8340 updated today (2010.02.01)

msf ></code></pre>

<p>metasploitはversion3からperlからrubyになったらしく、僕にとっては読みやすくて嬉しいです。でもWebインターフェースがRailsなのは少しアグレッシヴですね。</p>

<p>次回は実際に脆弱性を突いてみようと思います。</p>"
 :AUTHOR "komagata" :DATE 3474035399 :CATEGORY "セキュリティ")
(:PATH "/3474198831" :TITLE "Toll-free bridge" :BODY "<p>こんにちは。<br /> 
masudaです。</p> 
<p>今日は節分でしたね。<br /> 
あの豆を食べるのが好きです。</p> 
<p>早くもネタが尽きてきました。<br /> 
自分がObjective-Cのポテンシャルがわかっていないので（別にObjective-Cである必要は全然ないのですが）、続き物を書くことができません。</p> 
<p>今回はToll-free bridgeについて書いてみようと思います。<br /> 
またもやどこにもあるようなネタです。</p> 
<p>Toll-free bridgeについてはHMDTさんなどで詳しく紹介がされています。<br /> 
<a target=\"_blank\" href=\"http://journal.mycom.co.jp/column/objc/038/index.html\">ダイナミックObjective-C (38) Toll-free bridge(1) – 変換コスト0のブリッジ | エンタープライズ | マイコミジャーナル</a></p> 
<p>CocoaのオブジェクトとCoreFoundationのオブジェクトを相互にキャストするだけで変換することができます。<br /> 
たとえばCocoaのNSStringというクラスは、CoreFoundationではCFStringというものに対応します。</p> 
<p>具体例を示しましょう。<br /> 
変換の話の前に、CoreFoundationでは初期化はどうするか？</p> 
<p>NSStringであれば</p> 
<pre>
NSString *hoge = [[NSString alloc] initWithCString:\"piyo\"];
</pre> 
<p>のように書くところですが、CoreFoundationでは</p> 
<pre> 
CFStringRef hoge = CFStringCreateWithCString(kCFAllocatorDefault, \"piyo\", kCFStringEncodingUTF8);
</pre> 
<p>となります。</p> 
<p>さて、本題のToll-free bridgeによる変換です。<br />
どのようなときに使うのか？<br />
具体例を挙げると、NSStringの遅いメソッドであるcharacterAtIndexを呼び出す代わりに、CoreFoundationにあるCFStringGetCharacterFromInlineBuffer関数を使用して高速に処理するなんて使い方をするとか。<br />
別にすべてCoreFoundationで書いてもかまいませんが、Cocoaを使うよりも幾分面倒なのでこういう適用が多いのではないかと思います。
</p> 
<pre>
NSString                *hoge;
CFIndex                 length, current;
CFStringInlineBuffer    buffer;
UniChar                 ch;
 
*hoge = [[NSString alloc] initWithCString:\"piyo\"];
length = CFStringGetLength((CFStringRef)hoge);
 
CFStringInitInlineBuffer((CFStringRef)hoge, &buffer, CFRangeMake(0, length));
 
current = 0;
while (current < length)
{
    ch = CFStringGetCharacterFromInlineBuffer(&buffer, current);
    NSLog(@\"%c\", ch);
 
    ++current;
}
</pre> 
<p>こんな風にキャストするだけで渡すことができます。<br /> 
昔、NSDictionaryの生成をCFDictionaryの生成に変えたところ劇的に速度が向上したことがあったような気がします。</p> 
"
 :AUTHOR "masuda" :DATE 3474198831 :CATEGORY "Objective-C")
(:PATH "/3474287022" :TITLE "括り出したい" :BODY "こんにちは、千葉です!
完全なるネタ切れです。
以前のエントリーにも書きましたが、私は返り値をできるだけ使いたくなってしまう派です。
値を返すところは積極的に拾ってゆきたい。
そういう質なので、
<pre>
if pred
  method(100)
else
  method(200)
end
</pre>
のようなものを見ると
<pre>
method(if pred
         100
       else
         200
       end)
</pre>
と書きたくなってしまいます。ifは分岐が2つですが、Rubyのcase等の複数への分岐も同じくそうです。
LISPだと
<pre>
(method (if pred 100 200))
</pre>      
という感じですが、このifの纏め方は、LISPではすんなり流れるものの、Rubyだとif〜endが重たくみえるので、なんとなく書いてはいけないようにさえ感じます。<br />
条件演算子なら
<pre>
method(pred ? 100 : 200)
</pre>
という風にすっきりなのですが、なんとなく読みづらいですね。"
 :AUTHOR "chiba" :DATE 3474287022 :CATEGORY "エコロジー")
(:PATH "/3474323393" :TITLE "CMYK" :BODY "<p class=\"first\">こんにちは!! tahara です。
今回は Lisp on Rails はお休みで、Ruby on Rails の Paperclip の話題です。</p>

<p>IE で RGB の画像は表示できますが、CMYK の画像は表示できません。
CMYK から RGB に変換する手もありますが、変換時に結構色が変ってしまいます。
ということでアップロードする画像が CMYK の場合は、
バリデーションではじくようにします。</p>

<p>まず CMYK の判定ですが、ImageMagic の identify コマンドで可能です。</p>

<pre class=\"example\">
~% identify -format '%[colorspace]' ~/archive/normal.jpg
CMYK
~% identify -format '%[colorspace]' ~/archive/normal-rgb.jpg
RGB
</pre>

<p>ただし古い ImageMagic では <code>-format '%[colorspace]'</code>
オプションが認識されないので <code>-verbose</code> オプションを使います。</p>

<pre class=\"example\">
~% identify -verbose ~/archive/normal.jpg
Image: /home/ancient/archive/normal.jpg
  Format: JPEG (Joint Photographic Experts Group JFIF format)
  Class: DirectClass
  Geometry: 290x200+0+0
  Resolution: 72x72
  Print size: 4.02778x2.77778
  Units: PixelsPerInch
  Type: ColorSeparation
  Endianess: Undefined
  Colorspace: CMYK      <=== これ!!
  Depth: 8-bit
  ...
</pre>

<p>この identify を呼び出して CMYK をチェックするバリデーションを
config/initializers/paperclip.rb に組み込みます。</p>

<pre class=\"src\">
<span style=\"color: #00ffff;\">module</span> <span style=\"color: #98fb98;\">Paperclip</span>
  <span style=\"color: #00ffff;\">module</span> <span style=\"color: #98fb98;\">ClassMethods</span>
    ...

    <span style=\"color: #ff7f24;\"># </span><span style=\"color: #ff7f24;\">CMYK は IE で表示できないため、検証でエラーとする。
</span>    <span style=\"color: #00ffff;\">def</span> <span style=\"color: #87cefa;\">validates_attachment_not_cmyk</span> name, options = {}
      message = options[<span style=\"color: #7fffd4;\">:message</span>] || <span style=\"color: #ffa07a;\">\"CMYK フォーマットの画像はブラウザによって表示できないため使用できません。お手数ですが RGB フォーマットに変換してください。\"</span>
      attachment_definitions[name][<span style=\"color: #7fffd4;\">:validations</span>][<span style=\"color: #7fffd4;\">:not_cmyk</span>] = lambda <span style=\"color: #00ffff;\">do</span> |attachment, instance|
        original_file = attachment.instance_variable_get(:<span style=\"color: #eedd82;\">@queued_for_write</span>)[<span style=\"color: #7fffd4;\">:original</span>]
        colorspace =
          <span style=\"color: #00ffff;\">begin</span>
            attachment.file? && original_file &&
              <span style=\"color: #98fb98;\">Paperclip</span>.run(<span style=\"color: #ffa07a;\">\"identify\"</span>, <span style=\"color: #ffa07a;\">\"-verbose </span><span style=\"color: #eedd82;\">#{original_file.path}</span><span style=\"color: #ffa07a;\">\"</span>)
          <span style=\"color: #00ffff;\">rescue</span>
            <span style=\"color: #eedd82;\">nil</span>
          <span style=\"color: #00ffff;\">end</span>
        <span style=\"color: #00ffff;\">if</span> colorspace && colorspace =~ <span style=\"color: #ffa07a;\">/^\\s*Colorspace: CMYK$/</span>
          message
        <span style=\"color: #00ffff;\">end</span>
      <span style=\"color: #00ffff;\">end</span>
    <span style=\"color: #00ffff;\">end</span>
    ....
</pre>

<p>これでモデルから validates_attachment_not_cmyk
というひどい名前のバリデーションが使えるようになります。</p>

<pre class=\"src\">
  validates_attachment_not_cmyk <span style=\"color: #7fffd4;\">:picture_1</span>
</pre>

<p>まとめるとこうなります。</p>

<pre class=\"src\">
(incf ImageMagic)
(decf IE most-positive-fixnum)
</pre>
"
 :AUTHOR "tahara" :DATE 3474323393 :CATEGORY "Ruby on Rails")
(:PATH "/3474648989" :TITLE "CanvasとWebSocketsでみんなでウロウロする" :BODY
 "<p>火曜日担当のkomagataです。</p>

<p>Metasploitは一回お休みさせていただいてJavascriptのお話しです。</p>

<p>仕事は主にwebプログラミングなので身も蓋も無い言い方をすると「DBに入れたり出したり」しかしてません。</p>

<p>「もう文字列処理はうんざりなんだよ！」</p>

<p>というのは嘘ですが、たまには動きのある見栄えのするグラフィックとかアニメーションとかプログラムしてみたいと思い、HTML5で使えるようになるらしい、グラフィック機能のcanvasと双方向同期通信のWebSocketsを使ってキャラクターがウロウロするだけのプログラムを作ってみました。</p>

<p>WebSocketsを実装しているのは現状Google Chrome 4以降だけなので、動作してる雰囲気を伝えるために動画にしてみました。</p>

<script type=\"text/javascript\" src=\"http://ext.nicovideo.jp/thumb_watch/sm9649484\"></script><noscript><a href=\"http://www.nicovideo.jp/watch/sm9649484\">【ニコニコ動画】CanvasとWebSocketsのデモ</a></noscript>

<p>最近のChromeには実装されているので下記のように簡単にサーバーに接続することができます。</p>

<pre><code>ws = new WebSocket(\"ws://localhost:8080/\")
ws.onopen = function() { console.log('open') }
ws.onclose = function() { console.log('close') }
ws.onmessage = function(evt) { ws.send('Hello!') }</code></pre>

<p>CometなどよりとてもシンプルでたちまちWebSocketsが好きになりました！</p>

<p>Ajaxのように非同期に小さなメッセージをちょこちょこ飛ばすのではなく、１ユーザーに対して１本ガッシリしたラインを繋ぎ、双方向にドカドカ通信するイメージでしょうか。</p>

<p>真っ先にネットゲーム的なものでの利用方法が思い付きますが、これが標準的なブラウザで使えるようになれば、他の新しい使い方で出てきて斬新なUIが生まれれば良いなと思います。</p>

<p>とりあえず現状を下記のURLで動かしています。chromeやsafariのnightlyでは動くみたいです。（windows, mac, linuxどれでも動くことは確認しました。）</p>

<p><a href=\"http://verdana.komagata.org/prowler/\">http://verdana.komagata.org/prowler/</a></p>

<p>ソースは下記です。</p>

<p><a href=\"http://github.com/komagata/prowler\">komagata's prowler at master - GitHub</a></p>"
 :AUTHOR "komagata" :DATE 3474648989 :CATEGORY "javascript")
(:PATH "/3474804152" :TITLE "Ruby + R" :BODY "<p>こんにちは。<br />
masudaです。</p>

<p>今回はRubyでRを使うというのをやってみようかなと思います。</p>

<p>RはWikipediaのよると「オープンソースでフリーソフトウェアの統計解析向けプログラミング言語、及びその開発実行環境である。」そうです。</p>

<p>RubyからRを呼び出すためのRSRubyというgemがあります。<br />
これがあるとお手軽にRubyからRの機能を呼び出すことが可能です。</p>

<p>まずはR本体をインストールします。</p>

<p>次にRubyGemでRSRubyをインストールします。<br />
オプションでRの場所を指定してあげます。</p>

<p>Macだとこのようになります。</p>
<pre>sudo gem install rsruby -- --with-R-dir=/Library/Frameworks/R.framework/Resources</pre>

<h3>使い方</h3>

<pre>require 'rubygems'
require 'rsruby'

r = RSRuby::instance

r.eval_R(<<-RCOMMAND)
  # 実行したいコマンド
RCOMMANDS
</pre>

<p>たったこれだけです。</p>

<pre>
x = [1, 2, 3, 4, 5]
y = [2, 4, 6, 8, 10]

r.eval_R(<<-RCOMMANDS)
  pdf(\"~/foo.pdf\")

  x <- matrix(c(#{x.map do |a| '\"' + a + '\"' end.join(',')}), 1, #{x.size})
  y <- matrix(c(#{y.map do |b| '\"' + b + '\"' end.join(',')}), 1, #{y.size})

  plot(x, y, xlim = c(1, 10), ylim = c(1, 10))

  dev.off()
RCOMMANDS
</pre>

<p>上記を実行することで、PDFでグラフが作成されます。<br />
PDFだと何かと便利なので、PDFにしています。</p>

<p>RubyのArrayからRのArrayには自分はいつも上記のような書き方をしています。<br />
もっと良い書き方があるのかもしれません。</p>

<p>私がRをきちんと学んでいないからR単体だけでできるのかもしれませんが、Rubyの強力な文字列処理とRの強力な統計処理、数値演算を手軽に融合できることが気に入っています。</p>

<p>Rを使っていらっしゃる方は是非一度お試しください。</p>"
 :AUTHOR "masuda" :DATE 3474804152 :CATEGORY "R")
(:PATH "/3474892431" :TITLE "低価格レンタルサーバーの共有SSLとWordPress (1)" :BODY
 "こんにちは、chibaです。<br />
完全にネタが切れてしまいましたので、普段に遭遇する困ったことを書いて行きたいと思います。<br />
月額500円位からの低価格レンタルサーバーと、WordPressの組み合わせは、個人〜中小企業の強い味方なのではないかと思うのですが、SSLのフォームの設置で一癖あるらしい、と風の噂で聞きました。
具体的には、低価格レンタルサーバーでも共有SSLが追加オプションなしで無料で使えることが多いのですが、共有SSLなので、SSLでないURLとはだいぶ違ったURLになります。
例えば、さくらインターネットならば、
<pre>
http://www.example.com
</pre>
に対応する共有SSLのURLは、
<pre>
https://securexxxx.sakura.ne.jp/example.com
</pre>
になったり、Joe'sウェブホスティングならば、
<pre>
https://serverxx.instantssl.co.jp/~example
</pre>
であったり色々です。<br />
どうやら、この辺りの事情とWordPressのデフォルトの挙動の相性が良くないらしいのですが、この辺りをだらだら探っていきたいと思います。<br />
フォーム作成用のWordPressのプラグインは、<a href=\"http://contactform7.com/ja/\">Contact Form 7</a>を利用することにし、
<ul>
<li>1. 何が問題の原因なのかを理解する</li>
<li>2. 先達の解決策を探る</li>
<li>3. WordPressをいじれる位はPHPを勉強する</li>
<li>4. WordPressが設置できる位の人なら簡単に設置/設定できるようなプラグインを作る</li>
</ol>
位の流れで何回かに分けて書いてゆきたいと思います。<br />
果してPHPも知らない私にプラグインは作れるのでしょうか。■
"
 :AUTHOR "chiba" :DATE 3474892431 :CATEGORY "やすさ爆発")
(:PATH "/3474928504" :TITLE "Lisp on Rails 第3回 〜 belongs-to" :BODY
 "<p class=\"first\">こんにちは!! tahara です。
Lisp on Rails 第3回です!</p>

<p>今回は ActiveRecord の belongs_to アソシエーションもどきを実装したいと思います。
実行時のイメージとしては次のようになります。</p>

<pre class=\"src\">
(def-record post)
(def-record comment
    (<span style=\"color: #b0c4de;\">:belongs-to</span> post)) <span style=\"color: #ff7f24;\">; </span><span style=\"color: #ff7f24;\">comments テーブルは post_id 列を持っている。
</span>
(mapcar #'post-of (all comment))
<span style=\"color: #ff7f24;\">;; </span><span style=\"color: #ff7f24;\">=&gt; ポストのリストを取得
</span></pre>

<p>これを実装するのに Common Lisp の MOP を使ってみます。
インスタンス変数とそのインスタンス変数へのアクセスを拡張することになります。</p>

<p>まずインスタンス変数の拡張です。
ar-belongs-to-slot-mixin に belongs_to のアソシエーションテーブルと
外部キーを持たせ、それを継承した
ar-belongs-to-effective-slot-definition を
belongs_to のアソシエーションのインスタンス変数とします。</p>

<pre class=\"src\">
(<span style=\"color: #00ffff;\">defclass</span> <span style=\"color: #98fb98;\">ar-belongs-to-slot-mixin</span> ()
  ((belongs-to <span style=\"color: #b0c4de;\">:initarg</span> <span style=\"color: #b0c4de;\">:belongs-to</span>
               <span style=\"color: #b0c4de;\">:initform</span> nil
               <span style=\"color: #b0c4de;\">:accessor</span> belongs-to)
   (foreign-slotname <span style=\"color: #b0c4de;\">:initarg</span> <span style=\"color: #b0c4de;\">:foreign-slotname</span>
                     <span style=\"color: #b0c4de;\">:initform</span> nil
                     <span style=\"color: #b0c4de;\">:accessor</span> foreign-slotname)))

(<span style=\"color: #00ffff;\">defclass</span> <span style=\"color: #98fb98;\">ar-belongs-to-effective-slot-definition</span> (ar-effective-slot-definition
                                                   ar-belongs-to-slot-mixin)
  ())
</pre>

<p>slot-value-using-class を使い
ar-belongs-to-effective-slot-definition にアクセスする際に、
foreign-slotname を外部キーとして belongs-to のテーブルから
レコードを取得するようにします。</p>

<pre class=\"src\">
(<span style=\"color: #00ffff;\">defmethod</span> <span style=\"color: #87cefa;\">c2mop:slot-value-using-class</span>
  ((class active-record-class)
   instance
   (slot-def ar-belongs-to-effective-slot-definition))
  (aif (call-next-method)
       it
       (setf (slot-value instance (belongs-to slot-def))
             (select (find-class (belongs-to slot-def))
                     (slot-value instance (foreign-slotname slot-def))))))
</pre>

<p>以上、なんとなく belongs-to できました。
ソースはこちらから <a href=\"http://github.com/quek/lisp-on-rails\">http://github.com/quek/lisp-on-rails</a></p>

<p>第4回につづきます</p>
"
 :AUTHOR "tahara" :DATE 3474928504 :CATEGORY "Lisp on Rails")
(:PATH "/3475242539" :TITLE "犯罪的なコミットエンドランを簡単に防ぐ" :BODY "<p>komagataです。</p>
<p><a href=\"http://docs.komagata.org/4451\">犯罪的な戦術 - p0t</a></p>
<p>上記の様な戦術を簡単に防ぐ方法を考えてみました。</p>
<p>リポジトリがsubversionなのでpost-commitのhookを使ってテストを実行し、失敗していたら嫌なメールを送るという方法です。</p>
<p>対象のリポジトリ内のhookファイルに（大抵は/var/lib/svn/#{repost}/post-commit）を以下の様にします。</p>
<pre><code>#!/usr/bin/env ruby

repos, rev = ARGV[0], ARGV[1]
author = `svnlook author #{repos}`
cmd = \"cd /var/www/staging/ossuary/current && rake db:migrate:reset && script/spec spec -f progress\"
unless system(cmd)
  `mail -s '[ossuary] #{author} made a commit-and-run in r#{rev}' error@actindi.net`
end</code></pre>
<p><a href=\"http://www.flickr.com/photos/komagata/4359878080/\" title=\"[ossuary] komagata made a commit-and-run in rev256 - komagata@gmail.com - Gmail by komagata, on Flickr\"><img src=\"http://farm3.static.flickr.com/2783/4359878080_897082ceda.jpg\" width=\"480\" height=\"103\" alt=\"[ossuary] komagata made a commit-and-run in rev256 - komagata@gmail.com - Gmail\" /></a></p>
<p>「komagataはリビジョン256でコミットエンドランを決めた。」</p>
<p>(´・ω・`)・・・。</p>"
 :AUTHOR "komagata" :DATE 3475242539 :CATEGORY "テスティング")
(:PATH "/3475492156" :TITLE "真の豊かさとは何か" :BODY "こんにちは、chibaです。<br />
今回は、WordPressのフォームネタの続きの筈なのですが、準備が全く間に合ってないので全然関係ない話を。<br />
当社は、社内のコミュニケーションにskypeが活用されているのですが、Emacs派の私とtaharaさんは、もちろんskype.elを愛用しています。<br />
複数人で会話しているので会話が埋もれがちになるのですが、これまでみんなに見ておいて欲しい作業の報告等には、目立つように絵文字をちりばめて派手にしていました。<br />
しかし、それもだんだんスルーされるようになって来たことに危機感を抱いた私は、報告メッセージをAA化し出力することにし、それのためのelispをやっつけで書いてみました。
<pre>
(defun omatase (arg title name mesg)
  (interactive \"p\\nstitle: \\nsname: \\nsmesg: \")
  (let* ((title-chars (append title nil))
         (last-1~3 (last title-chars 3))
         (butlast3 (butlast title-chars 3))
         (last3 (first last-1~3))
         (last2 (second last-1~3))
         (last1 (or (third last-1~3) 12288)))
    (insert (format \"
.
┌○┐%s
│%c｜ハハ  お待たせしました、%sさん
│%c｜ﾟωﾟ)
│%c｜ ／/
└○┘ (⌒)
　　し⌒ 

%s

　 ハハ  以上、よろしくお願いします
　(ﾟωﾟ)
＿(_つ/￣￣￣/＿
　 ＼/＿＿＿/
\"
                    (if (null butlast3)
                        \"\"
                      (apply 
                       #'concat 
                       (mapcar (lambda (c) 
                                 (format \"\\n│%c｜\" c))
                               butlast3)))
                    last3
                    name
                    last2
                    last1
                    mesg))))
</pre>
M-x omataseで
<pre>
title: 死んでもいやです
name: 名無し
mesg: そんなことできません
</pre>
と入力すると、
<pre>
.
┌○┐
│死｜
│ん｜
│で｜
│も｜
│い｜
│や｜ハハ  お待たせしました、名無しさん
│で｜ﾟωﾟ)
│す｜ ／/
└○┘ (⌒)
　　し⌒ 

そんなことできません

　 ハハ  以上、よろしくお願いします
　(ﾟωﾟ)
＿(_つ/￣￣￣/＿
　 ＼/＿＿＿/
</pre>
という風に出力されます。ただバッファにAAが出力されるだけですが、Emacsって良いですね。<br />
メッセージは依然適当にスルーされています。
■
"
 :AUTHOR "chiba" :DATE 3475492156 :CATEGORY "生き甲斐")
(:PATH "/3475577346" :TITLE "Lisp on Rails 第4回 〜 has-many" :BODY
 "<p class=\"first\">こんにちは!! tahara です。
Lisp on Rails 第4回です!</p>

<p>今回は ActiveRecord の has_many アソシエーションもどきを実装したいと思います。
前回の belongs_to とほとんど同じです。
ar-has-many-direct-slot-definition と ar-has-many-effective-slot-definition
を定義します。</p>

<pre class=\"src\">
(<span style=\"color: #00ffff;\">defclass</span> <span style=\"color: #98fb98;\">ar-has-many-slot-mixin</span> ()
  ((has-many <span style=\"color: #b0c4de;\">:initarg</span> <span style=\"color: #b0c4de;\">:has-many</span>
             <span style=\"color: #b0c4de;\">:initform</span> nil
             <span style=\"color: #b0c4de;\">:accessor</span> has-many)
   (class-symbol <span style=\"color: #b0c4de;\">:initarg</span> <span style=\"color: #b0c4de;\">:class-symbol</span>
                 <span style=\"color: #b0c4de;\">:initform</span> nil
                 <span style=\"color: #b0c4de;\">:accessor</span> class-symbol)))

(<span style=\"color: #00ffff;\">defmethod</span> <span style=\"color: #87cefa;\">initialize-instance</span> <span style=\"color: #b0c4de;\">:after</span> ((self ar-has-many-slot-mixin) <span style=\"color: #98fb98;\">&amp;rest</span> args)
  (<span style=\"color: #00ffff;\">declare</span> (ignore args))
  (<span style=\"color: #00ffff;\">unless</span> (class-symbol self)
    (setf (class-symbol self)
          (sym (singularize (has-many self))))))

(<span style=\"color: #00ffff;\">defclass</span> <span style=\"color: #98fb98;\">ar-has-many-direct-slot-definition</span> (ar-direct-slot-definition
                                              ar-has-many-slot-mixin)
  ())

(<span style=\"color: #00ffff;\">defclass</span> <span style=\"color: #98fb98;\">ar-has-many-effective-slot-definition</span> (ar-effective-slot-definition
                                                 ar-has-many-slot-mixin)
  ())
</pre>

<p>direct-slot-definition-class と effective-slot-definition-class と
compute-effective-slot-definition でゴニョゴニョすると上記の
slot-definition が使えるようになります。</p>

<p>slot-value-using-class と (setf slot-value-using-class) で関連テーブルの
取得と設定を行います。</p>

<pre class=\"src\">
(<span style=\"color: #00ffff;\">defmethod</span> <span style=\"color: #87cefa;\">c2mop:slot-value-using-class</span>
  ((class active-record-class)
   instance
   (slot-def ar-has-many-effective-slot-definition))
  (aif (call-next-method)
       it
       (setf (slot-value instance (has-many slot-def))
             (all (find-class (class-symbol slot-def))
                  <span style=\"color: #b0c4de;\">:conditons</span> (list (key-sym (class-name class) '-id)
                                   (%value-of instance <span style=\"color: #b0c4de;\">:id</span>))))))

(<span style=\"color: #00ffff;\">defmethod</span> (<span style=\"color: #87cefa;\">setf c2mop:slot-value-using-class)</span> <span style=\"color: #b0c4de;\">:after</span>
           (new-value
            (class active-record-class)
            instance
            (slot-def ar-has-many-effective-slot-definition))
  (<span style=\"color: #00ffff;\">loop</span> with id = (%value-of instance <span style=\"color: #b0c4de;\">:id</span>)
        with column = (str (class-name class) <span style=\"color: #ffa07a;\">\"-id\"</span>)
        for x in new-value
        do (setf (%value-of x column) id)))
</pre>

<p>で、だいたいこんな感じで使えるようになります。</p>

<pre class=\"src\">
(def-record comment
    (<span style=\"color: #b0c4de;\">:belongs-to</span> post))
(def-record post
    (<span style=\"color: #b0c4de;\">:has-many</span> comments))
(<span style=\"color: #00ffff;\">let*</span> ((post (car (all post)))
       (comments (comments-of post)))
  (mapc #'describe comments))
</pre>

<p>以上、なんとなく has-many できました。
ソースはこちらから <a href=\"http://github.com/quek/lisp-on-rails\">http://github.com/quek/lisp-on-rails</a></p>

<p>第5回につづきます</p>
"
 :AUTHOR "tahara" :DATE 3475577346 :CATEGORY "Lisp on Rails")
(:PATH "/3475914255" :TITLE "プレゼンハムでウロウロする" :BODY "<p>komagataです。</p>

<p>前回は矢印キーでウロウロしたのでマウスクリックでウロウロするものを作りました。</p>

<p><a href=\"http://komagata.org/canvas/\" title=\"canvas by komagata, on Flickr\"><img src=\"http://farm5.static.flickr.com/4059/4381504065_89c0a0f8f6_o.png\" width=\"392\" height=\"341\" alt=\"canvas\" /></a></p>

<p><a href=\"http://komagata.org/canvas-prowler/1/\">http://komagata.org/canvas-prowler/1/</a></p>

<p>直線や曲線を整数で高速に描画するプレゼンハムアルゴリズムでクリック地点までの経路を計算して近付きます。</p>

<p>グラフィックのプログラミングは間違えても変な動きをしたりして面白いですね！</p>"
 :AUTHOR "komagata" :DATE 3475914255 :CATEGORY "canvas")
(:PATH "/3476099961" :TITLE "C-s/C-rを使おう" :BODY "chibaです。依然としてネタ切れです。<br />
WordPressのことを調べようと思って前フリしてましたが、これまた全然進んでません。<br />
■<br />
ということなので、最近知ったEmacsの知ってる人には、当たり前な機能を紹介したいと思います。<br />
Emacs使いの方は、C-sはもちろん良く利用すると思いますが、C-sで検索モードに入ってからの、C-w、M-yが便利であることを最近知りました。<br />
C-wで単語単位で検索ワードを漸増しつつ検索できたりしますし、M-yは最新のキルリングの内容で検索できます。<br />
■<br />
また、C-sの応用として、カーソル移動に積極的にC-s/C-rを利用するのも非常に便利であることを再認識しています。<br />
viだとf〜などが便利なのでfを良く使うのですが、EmacsでもC-sで似たようなことはできるんだなあと。<br />
10年位使っていますが、この10年間だいぶ損をしていたなあと思った次第です。<br />
■


"
 :AUTHOR "chiba" :DATE 3476099961 :CATEGORY "Emacs")
(:PATH "/3476158930" :TITLE "iPhone アプリケーションの開発" :BODY
 "<p>こんにちは!! tahara です。</p>
<p>突然ではありますが、とりあえず読むべきは <a href=\"http://developer.apple.com/jp/iphone/library/japanese.html\">iPhone Dev Center</a> にある以下のドキュメントでしょうか。</p>

<ul>
<li><a href=\"http://developer.apple.com/jp/iphone/library/documentation/MobileHIG.pdf\">iPhone ヒューマンイン ターフェイス ガイドライン</a></li>
<li><a href=\"http://developer.apple.com/jp/iphone/library/documentation/iPhoneAppProgrammingGuide\">iPhone アプリケーションプログラミングガイド</a></li>
<li><a href=\"http://developer.apple.com/jp/iphone/library/documentation/iPhone_Development.pdf\">iPhone 開発ガイド</a></li>
<li><a href=\"http://developer.apple.com/jp/iphone/library/documentation/iPhoneOSTechOverview\">iPhone OS テクノロジーの概要</a></li>
<li><a href=\"http://developer.apple.com/jp/iphone/library/documentation/MemoryMgmt.pdf\">Cocoaメモリ管理プログラミングガイド</a></li>
<li><a href=\"http://developer.apple.com/jp/iphone/library/documentation/ObjC.pdf\">Objective-C 2.0 プログラミング言語</a></li>
</ul>

<p>まずは <a href=\"http://developer.apple.com/jp/iphone/library/documentation/MobileHIG.pdf\">iPhone ヒューマンイン ターフェイス ガイドライン</a> を読んでみました。</p>

<p>iPhone が他と違うところ</p>

<ul>
<li>小さい画面サイズ。 480x320</li>
<li>メモリ少ない。OS が警告をくれたらすぐにメモリ開放すべすし。didReceiveMemoryWarning</li>
<li>1画面。ある意味 Stumpwm!</li>
<li>さらに、同時に1アプリケーション。</li>
<li>標準に準拠してヘルプコンテンツを最小限にすべし。</li>
</ul>

<p>3つのアプリケーションの形態</p>

<ul>
<li>iPhone アプリケーション</li>
<li>Web 専用contents</li>
<li>ハイブリッドアプリケーション(上の2つの組み合わせ)</li>
</ul>

<p>3つのアプリケーションスタイル</p>

<ul>
<li>生産性型アプリケーション(例 Mail)</li>
<li>ユーティリティ型アプリケーション(例 Weather)</li>
<li>没入型アプリケーション(例 ゲームアプリ)</li>
</ul>

<p>デスクトップアプリを移植する場合はよく使われる 20% の機能のみに絞る。</p>

<p>ヒューマンインターフェイスの原則</p>

<ul>
<li>自然なメタファで</li>
<li>具体的なものを直接いじる感覚</li>
<li>テキスト入力を最小限に、選択肢を提示</li>
<li>ユーザの操作に対するフィードバック、効果的なやりとり</li>
<li>ユーザが開始でき、それを停止できる動きであること</li>
<li>インターフェイスの一貫性</li>
</ul>

<p>製品定義ステートメントを作りましょう。</p>

<ul>
<li>対象ユーザを明確化</li>
<li>実装機能の限定</li>
</ul>

<p>簡潔さと使いやすさ</p>

<ul>
<li>使い方を明白に</li>
<li>頻繁に使用される情報を画面上部に集中</li>
<li>テキスト入力を最小限</li>
<li>重要な情報を簡潔に</li>
<li>タップ可能な要素の領域は指先サイズに</li>
</ul>

<p>製品ステートメントにふさわしい主たる機能に焦点を当て、
簡潔かつ入力を最小限にする。</p>

<p>ジェスチャを適切にサポートする。</p>

<ul>
<li>単純かつ簡単な方法は必須</li>
<li>新しいジェスチャを定義しない</li>
</ul>

<p>ブランドはささやかで控え目に。
ただしアプリケーションアイコンにはブランドももりこむ。</p>

<p>一般的なタスク</p>

<ul>
<li>開始

<ul>
<li>ステータスバーに適切なスタイルを設定する</li>
<li>最初の画面に似た起動画面を用意して感覚的起動時間を短縮する</li>
<li>余計なスプラッシュ画面は不要</li>
<li>基本縦で起動</li>
<li>最後に実行したときの状態を復元する</li>
</ul></li>
<li>停止

<ul>
<li>いつでも停止できるように</li>
<li>停止時は次の起動のために可能なかぎり詳細の情報を保存しておく</li>
</ul></li>
<li>設定(Settings)と設定オプション

<ul>
<li>設定は一度設定したら変更しないもの</li>
<li>設定オプションは頻繁に変更する可能性があるもの</li>
<li>理想はユーザに設定を要求しないこと</li>
</ul></li>
<li>その他いろいろ ... ちょっと省略してしまいました。</li>
</ul>

<p>ユーザインターフェイスの設計</p>

<ul>
<li>ステータスバーはあまりいじらない</li>
<li>ToolBar は 44x44 で5つ以下が妥当</li>
<li>Tab Bar はモードの切り替え。
5つまでは横に並んで、それをこえたものは More に。
バッジを表示できる。</li>
<li>モーダルビューは煩わしいので乱用しない。</li>
<li>Action Sheet はユーザの選択肢でり複数のボタンを備える。
害のあるものは赤で一番上に。</li>
<li>モーダルビューは主たる機能が関連する自己簡潔型のタスクで(例 Mail のメッセージ作成)</li>
<li>アクティビティインジケータ

<ul>
<li>ステータスバーのは1〜2秒ネットワークにアクセスする場合</li>
<li>もっと時間がかかる場合はツールバーに表示</li>
</ul></li>
<li>進捗がわかるものは Progress View</li>
<li>Text Field は左端に使用目的、右端に追加機能</li>
<li>システムが用意しているボタン、アイコンを意図されたとおり使う

<ul>
<li>ユーザにやさしい</li>
<li>工数削減</li>
</ul></li>
</ul>

<p>アイコン、画像の作り方の説明でおしまい。</p>

<p>このようなドキュメントがしっかり用意されているのは素晴しいですね。</p>
"
 :AUTHOR "tahara" :DATE 3476158930 :CATEGORY "iPhone")
(:PATH "/3476570782" :TITLE "UITextFieldに入力されている文字数を動的に、非同期に数える。" :BODY
 "<p>2週間連続で原稿を落としたmasudaです。<br />
こんにちは。</p>

<p>あまりググればわかるということは書きたくはないなと思っているので、なかなかネタを見つけるのは難しいです。</p>

<p>今回はiPhoneアプリを書いているときにはまったところで、ググってもなかなか答えが見つからないことを書きたいと思います。</p>

<p>2つあるので2週間はこれで持つ！</p>

<p>とあるUITextFieldによる入力フォームと、UIBarButtonItemによる「完了」ボタンがある画面を考えます。</p>

<p>今回のエントリの目的はUITextFieldに文字が入力されていない、つまり空であるときは、「完了」ボタンを表示しない画面を作成するということです。</p>

<p>ポイントはUIControlEventEditingChangedイベントを使うこと。<br />
最初はUITextFieldDelegateのtextField:shouldChangeCharactersInRange:replacementString:とかを使用することを考えましたが、文字を消去したときにボタンが消えない等々うまくいきませんでした。</p>


<p>サンプルコードを書いてみます。</p>

<pre>- (void)setupUserInterface
{
    UIView      *contentView;
    UITextField *textField;

    contentView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self setView:contentView];
    [contentView release];

    doneButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone
                                                               target:self
                                                               action:@selector(respondsToDoneButtonTouchDown:)];

    textField = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 100, 20)];
    [contentView addSubview:textField];
    [textField release];
    [textField addTarget:self
                  action:@selector(respondsToEditingChanged:)
        forControlEvents:UIControlEventEditingChanged];
}


- (void)respondsToEditingChanged:(id)sender
{
    if ([sender isKindOfClass:[UITextField class]])
    {
        // 本当はsenderを用いずにメンバ変数とかにしておけばいいのだけれど、今回はあえて型変換をしてみる。
        if ([[(UITextField *)sender text] length])
        {
            [[self navigationItem] setRightBarButtonItem:doneButton animated:YES];
        }
        else
        {
            [[self navigationItem] setRightBarButtonItem:nil animated:YES];
        }
    }
}</pre>

<p>参考<br />
<a target=\"_blank\" href=\"http://groups.google.co.jp/group/iphonesdkdevelopment/browse_thread/thread/0cc9032a397a02ff\">Disable button if textField is empty - iPhone SDK Development</a></p>"
 :AUTHOR "masuda" :DATE 3476570782 :CATEGORY "objective-c")
(:PATH "/3476597468" :TITLE "canvasでウロウロする(2)" :BODY
 "<p>火曜日担当なのに間に合わずに水曜日にアップしている2010生まれてこなかった方が良かった男オブザイヤー候補、komagataです。</p>

<p>canvasでウロウロするのをiPhoneにフィットするように修正しました。</p>

<p><a href=\"http://komagata.org/canvas-prowler/2/\"><img src=\"http://farm5.static.flickr.com/4029/4403685702_ec84aec75e_o.png\" width=\"287\" height=\"550\" alt=\"canvas prowler2\" /></a></p>

<p><a href=\"http://komagata.org/canvas-prowler/2/\">http://komagata.org/canvas-prowler/2/</a></p>

<p>解像度がファミコンは224x256に対してiphoneは320x480なので細かいですね。</p>

<p>ソース：<a href=\"http://github.com/komagata/canvas-prowler/tree/master/2/\">2 at master from komagata's canvas-prowler - GitHub</a></p>"
 :AUTHOR "komagata" :DATE 3476597468 :CATEGORY "canvas")
(:PATH "/3476702991" :TITLE "MacOSX上でMacPortsを使わずにRails開発環境を作る" :BODY
 "こんにちは、chibaです。<br />
MacOSX上などにRails開発環境を複数作らなくてはいけなくて色々試行錯誤しています。<br />
環境は、
<ul>
  <li>デザイナーさん制作ツール: <a href=\"http://www.panic.com/jp/coda/\">Coda</a></li>
  <li>Ruby on Rails</li>
  <li>Apache2</li>
  <li>MacOSXだったり</li>
  <li>Linuxだったり</li>
  <li>貧乏</li>
</ul>
という感じで、OS環境を2〜3種跨ぎ、かつ、MacOSXとWindowsは主にデザイナーさんが利用するプラットフォームです。<br />
<ol>
  <li>Linuxなら直にRoR環境を構築してしまえば良いし、デザイナーさん達がLinuxは使うことはない</li>
  <li>MacOSXも直にMacPortsなどを利用してRoR環境を構築すれば良いけれど、デザイナーさん達はMacOSXをメインに使うらしいので、勝手に各自RoR環境を構築してみて下さいとも言いがたい</li>
  <li>何か問題が起きた場合に、各自で環境を構築してもらうと、何がどうなってエラーになっているのか探るのが面倒臭い
</ol>
という状況でした。<br />
適当に考えた末、VirturlBox上にRoRの環境を構築し、そのVMイメージを皆で共有すれば楽チンで良いに違いない!ということで試しに、MacOSXの上にVirturlBoxを導入してみました。<br />
ホスト<=>VM間のファイル共有はNFS。<br />
本当は、VirturlBoxの共有ファイル機能を利用したかったのですが、なんだか上手く動かせなかったのでNFSに。<br />
ローカルのファイルをCodaで編集して、Apache/VirturlBoxがホストするページをローカルのブラウザで眺める、という感じで作業してもらうことになりました。<br />
MacOSXは、NFSなどの上で作業すると、._unkoや、.DS〜というファイルを大量にばらまきますが、この構成の場合、作業ディレクトリはホスト側なのでそういうこともありません。<br />
とりあえず、LinuxとMacOSXをホストにして実際に使ってみていますが、可もなく不可もないような、微妙な環境ができあがりました。<br />
もっと他にナイスな組み合わせを教えてください…。■
"
 :AUTHOR "chiba" :DATE 3476702991 :CATEGORY "MacPortsよりfink")
(:PATH "/3476755810" :TITLE "多段 ssh で vnc" :BODY
 "<p class=\"first\">こんにちは!! tahara です。</p>

<p>例えば host1 を経由して host2 に vnc したい場合どうすればいいか調べてみました。
結果 ↓ のページに書かれてあるとおりすれば可能でした。ありがとうございます。</p>

<p><a href=\"http://phinloda.jugem.cc/?eid=2093\">ssh を多段に使ってずっと遠くにあるマシンに port forward する｜裏表(Phinloda のもう裏だか表だか分からないページ)</a></p>

<p>蛇足になりますが、次の手順で host2 に vnc できました。</p>

<ul>
<li>公開鍵を host1 と host2 の ~/.ssh/authorized_keys に追加</li>
<li>ssh -A -C -t -L 5900:127.0.0.1:15901 <a href=\"mailto:user1@host1.example.com\">user1@host1.example.com</a> -A -C -L 15901:127.0.0.1:5900 <a href=\"mailto:user1@host2.example.com\">user1@host2.example.com</a></li>
<li>xvncviewer localhost</li>
</ul>
"
 :AUTHOR "tahara" :DATE 3476755810 :CATEGORY "ssh")
(:PATH "/3477066280" :TITLE "衝突判定でウロウロする" :BODY
 "<p>身に覚えの無い商品がAmazonから送られてくる。komagataです。</p>

<p>canvasでウロウロするものに衝突判定を追加してみました。</p>

<p>（今回はAndroidエミュレーターで機種はNexus Oneで動作させてみましたが、webkitなのでiPhone用から何の変更も無しに動いたのは楽でした。）</p>

<p><a href=\"http://komagata.org/canvas-prowler/3/\"><img src=\"http://farm5.static.flickr.com/4065/4417905526_e39c1df1b3_o.png\" width=\"302\" height=\"502\" alt=\"5554:nexus_one\" /></a></p>

<p><a href=\"http://komagata.org/canvas-prowler/3/\">http://komagata.org/canvas-prowler/3/</a></p>

<p>（iPhoneやAndroidでアクセスしてみて下さい）</p>

<p>自分で作る前に、文系プログラマー的にはゲームプログラムはどういう実装をすればいいのかを言葉で知りたかったので実装のイメージ的なところを以前のモノと合わせて言葉で説明したいと思います。</p>

<p><strong>移動方法の実装イメージ：</strong></p>

<p>まず、キャラクターの描画はフレーム毎に定期的に（30fpsとかで）描画します。描画はキャラクタの現在持っている座標に単に描画するだけです。</p>

<p>それとは別にクリックイベントをトリガーとしてプレイヤーキャラクターとクリック地点をプレゼンハムアルゴリズムで直線を引き（実際には描画しない）、その直線の座標を配列としてプレイヤーキャラクターの移動のためのバッファ（キュー）に格納します。</p>

<p>キャラクターはクリックイベントには感知せず、1フレーム毎に自分の移動バッファに座標があれば一つづつ消費しながら自分の座標を変更していき、バッファに無ければ何もしません。</p>

<p>クリックイベント時には移動バッファが残っていても空にした上で新しい経路を設定するのでクリックした瞬間に進路を変更します。</p>

<p><strong>衝突判定：</strong></p>

<p>何かが有る度に、それぞれのオブジェクト（プレイヤー、背景、障害物など）を全て走査、それぞれのオブジェクトが持つプレイヤーフラグ、障害物フラグを見て処理します。（これは関係無いオブジェクトも毎回走査することになるのでとてもヘボイやり方でした。イベント毎にイベントリスナーを登録するように次は変更したいです。）</p>

<p>プレイヤーキャラクターの移動バッファの次の移動場所が障害物フラグを持つオブジェクトと衝突している場合に移動を中止して以降の移動バッファもクリアします。</p>

<p>シンプルなドット絵を対象にしているので四角形と四角形の衝突を判定するのはとても楽です。</p>

<p>少しハマったのは、衝突した時点で移動バッファをクリアするのではなく、衝突する一歩前で次の移動地点を見てバッファをクリアしなければならないというところです。</p>

<p>衝突した時点でバッファをクリアすると、見た目上は分かり辛いですが、一歩分障害物にめり込んでいるので障害物に接触した瞬間動けなくなります。</p>

<p>この変な動きも面白かったですが、プログラムを見直して、なるほどなあと思いました。</p>

<p>次回もこれに新しい要素を付け加えたいと思います。</p>"
 :AUTHOR "komagata" :DATE 3477066280 :CATEGORY "canvas")
(:PATH "/3477191382" :TITLE "UITableViewCellの高さを内容に合わせて変化させる" :BODY
 "<p>こんにちは。</p>

<p>今回はUITableViewにおいてcellの高さをcellの内容に合わせて変化させるということをやってみます。</p>

<p>Natsuliphoneのソースを参考にさせていただきました。</p>

<p>UITableViewでcellの高さを設定するには、UITableViewDelegateのtableView:heightForRowAtIndexPath:メソッドを実装して高さを返してあげます。<br />
ただ、ここに問題があってこのメソッドが呼び出される時点ではcellができていないのです。<br />
ですので、cellForRowAtIndexPath:メソッドなどでcellを取得してそのcellの高さを返すというような方法をとることができません。</p>

<p>そこで対象となるcellに高さを計算するためのクラスメソッドを実装し、そこで得られた値をtableView:heightForRowAtIndexPath:に返します。</p>
<pre>+ (CGFloat)heightWithContents:(NSString *)contents
{
    CGFloat result;
    CGSize  labelSize;

    result = 0.0;
    labelSize = [contents sizeWithFont:[UIFont systemFontOfSize:16.0]
                     constrainedToSize:CGSizeMake(300.0, 10000)
                         lineBreakMode:UILineBreakModeWordWrap];
    result += labelSize.height;

    return result;
}</pre>

<p>複数行にわたるtextの高さを求めるにはsizeWithFont:constrainedToSize:lineBreakMode:メソッドを使用します。<br />
sizeWithFont:forWidth:lineBreakMode:メソッドは1行だけのサイズを返しますので、名前にだまされないようにしてください。</p>

<p>参考: <a target=\"_blank\" href=\"http://github.com/takuma104/ntlniph\">Natsuliphoneのソース</a></p>"
 :AUTHOR "masuda" :DATE 3477191382 :CATEGORY "objective-c")
(:PATH "/3477312231" :TITLE "思い込み、こわいです" :BODY "こんにちは、chibaです。<br />
いきなりWordPressの話なのですが、私はこれまで、WordPressとは、HTML内のリンクというリンクにhttp〜というURLをベタベタと詰め込めるだけ詰め込む生き物だと思っておりました。<br />
これが故に、作成したサイトを別のURLを持つテストサイト等にコピーする際にも、SQLで色々するはめになるものだと思っておりました。<br />
「せめてURLじゃなくて\"/\"から始まってくれれば良いのに…」と思いながらDBをいじっておりましたが、ふと、SQLでsiteurlに\"/\"を入れてみたところ普通に\"/\"からという記述で動くことが分かりました。<br />
おやおや?ということで、この状態で、
<pre>
設定 > 一般設定 > WordPress のアドレス (URL)
</pre>
を眺めたところ、内容は空になっておりました。ものは試しに\"/\"を入力してみましたが、どうも末尾の\"/\"は消されて空になる様子<br />
なんだWordPress内でURL指定じゃなくて、絶対パスでの指定ができるんじゃないかと!
<pre>
WordPress のアドレス (URL)
</pre>
の(URL)という表現が紛らわしいですよね。<br />
<font color=\"red\">※ちなみに最初の設定時ではなく、稼働中のものを途中で変更すると色々壊れてしまい、SQLで色々するハメになる場合がありますのでご注意下さい</font>■
"
 :AUTHOR "chiba" :DATE 3477312231 :CATEGORY "WordPress")
(:PATH "/3477394606" :TITLE "Lisp on Rails 第5回 〜 has-one" :BODY
 "<p class=\"first\">こんにちは!! tahara です。
Lisp on Rails 第5回です!</p>

<p>今回は ActiveRecord の has_one アソシエーションもどきを実装したいと思います。
前回の has_many に瓜二つです。
ar-has-one-direct-slot-definition と ar-has-one-effective-slot-definition
を定義します。</p>

<pre class=\"src\">
(<span style=\"color: #00ffff;\">defclass</span> <span style=\"color: #98fb98;\">ar-has-one-slot-mixin</span> ()
  ((has-one <span style=\"color: #b0c4de;\">:initarg</span> <span style=\"color: #b0c4de;\">:has-one</span>
            <span style=\"color: #b0c4de;\">:initform</span> nil
            <span style=\"color: #b0c4de;\">:accessor</span> has-one)
   (class-symbol <span style=\"color: #b0c4de;\">:initarg</span> <span style=\"color: #b0c4de;\">:class-symbol</span>
                 <span style=\"color: #b0c4de;\">:initform</span> nil
                 <span style=\"color: #b0c4de;\">:accessor</span> class-symbol)))

(<span style=\"color: #00ffff;\">defmethod</span> <span style=\"color: #87cefa;\">initialize-instance</span> <span style=\"color: #b0c4de;\">:after</span> ((self ar-has-one-slot-mixin) <span style=\"color: #98fb98;\">&amp;rest</span> args)
  (<span style=\"color: #00ffff;\">declare</span> (ignore args))
  (<span style=\"color: #00ffff;\">unless</span> (class-symbol self)
    (setf (class-symbol self) (has-one self))))

(<span style=\"color: #00ffff;\">defclass</span> <span style=\"color: #98fb98;\">ar-has-one-direct-slot-definition</span> (ar-direct-slot-definition
                                             ar-has-one-slot-mixin)
  ())

(<span style=\"color: #00ffff;\">defclass</span> <span style=\"color: #98fb98;\">ar-has-one-effective-slot-definition</span> (ar-effective-slot-definition
                                                ar-has-one-slot-mixin)
  ())
</pre>

<p>direct-slot-definition-class と effective-slot-definition-class と
compute-effective-slot-definition でゴニョゴニョすると上記の
slot-definition が使えるようになります。</p>

<p>slot-value-using-class と (setf slot-value-using-class) で関連テーブルの
取得と設定を行います。</p>

<pre class=\"src\">
(<span style=\"color: #00ffff;\">defmethod</span> <span style=\"color: #87cefa;\">c2mop:slot-value-using-class</span>
  ((class active-record-class)
   instance
   (slot-def ar-has-one-effective-slot-definition))
  (aif (call-next-method)
       it
       (setf (slot-value instance (has-one slot-def))
             (car (all (find-class (class-symbol slot-def))
                       <span style=\"color: #b0c4de;\">:conditons</span> (list (key-sym (class-name class) '-id)
                                        (%value-of instance <span style=\"color: #b0c4de;\">:id</span>)))))))

(<span style=\"color: #00ffff;\">defmethod</span> (<span style=\"color: #87cefa;\">setf c2mop:slot-value-using-class)</span> <span style=\"color: #b0c4de;\">:after</span>
           (new-value
            (class active-record-class)
            instance
            (slot-def ar-has-one-effective-slot-definition))
   (<span style=\"color: #00ffff;\">when</span> new-value
     (setf (%value-of new-value (str (class-name class) <span style=\"color: #ffa07a;\">\"-id\"</span>))
           (%value-of instance <span style=\"color: #b0c4de;\">:id</span>))))
</pre>

<p>で、だいたいこんな感じで使えるようになります。</p>

<pre class=\"src\">
(def-record post
  (<span style=\"color: #b0c4de;\">:has-many</span> comments)
  (<span style=\"color: #b0c4de;\">:has-one</span> post-info))
(def-record post-info
  (<span style=\"color: #b0c4de;\">:belongs-to</span> post))
(<span style=\"color: #00ffff;\">let*</span> ((post (car (all post)))
       (post-info (post-info-of post)))
  (describe post-info))
</pre>

<p>以上、なんとなく has-one できました。
ソースはこちらから <a href=\"http://github.com/quek/lisp-on-rails\">http://github.com/quek/lisp-on-rails</a></p>

<p>第6回につづきます。</p>

<p>すみません。
次回はコピペじゃないように頑張ります。</p>
"
 :AUTHOR "tahara" :DATE 3477394606 :CATEGORY "Lisp on Rails")
(:PATH "/3477747671" :TITLE "glpngをmacで使う" :BODY
 "<p>飲み屋での一杯目は「水」。komagataです。</p>

<p>canvas上の何も無いも同然なグラフィックAPI上でアプリを書いてきましたが、WebGLというOpenGL ESベースのAPIの実装が始まってるそうなのでまずはOpenGLの勉強を始めました。</p>

<p>デスクトップアプリケーションのGUIツールキット部分はWebとは関係無い（=canvasみたいな感じになるはずな）ので、GLUT(The OpenGL Utility Toolkit)を使って行きます。</p>

<p>とりあえずpngを簡単に読み込みたかったのでglpngというライブラリを使おうとしたのですが、各地でリンク切れ。前世紀にメンテが終わってるっぽい雰囲気ですが、下記（OpenBSDのリポジトリ）に有りました。</p>

<p>ftp://ftp.usa.openbsd.org/pub/OpenBSD/distfiles/glpng-1.45/glpng.zip</p>

<p>どうせWebのためにやるのでOS依存部分で苦労したくないんですが、Macでコンパイルするのに少し修正する必要がありました。</p>

<pre><code>% diff glpng.c glpng.c.org
28,29c28,29
&lt; #include &lt;GLUT/glut.h&gt;
&lt; #include \"GL/glpng.h\"
---
&gt; #include &lt;GL/glpng.h&gt;
&gt; #include &lt;GL/gl.h&gt;</code></pre>

<p>付属のMakefile.LINUXでmakeすれば静的ライブラリ（libglpng.a）が出来ます。（Makefile.SGIってファイルも付いてるのが古さを感じます）</p>

<p>pngInfoとpngBind関数が使えるようになるので簡単にpngファイルが簡単にテクスチャとして貼れました。</p>

<pre><code>#include &lt;stdio.h&gt;
#include &lt;GLUT/glut.h&gt;
#include \"glpng.h\"

GLuint texture;

void display()
{
    glClear(GL_COLOR_BUFFER_BIT);
    glPushMatrix();
        glTranslatef(0, 0, 0);
        glBindTexture(GL_TEXTURE_2D, texture);
    glPopMatrix();
  
    glBegin(GL_QUADS);
        glTexCoord2d(0.0, 1.0);
        glVertex2d(-1, -1);
        glTexCoord2d(1.0, 1.0);
        glVertex2d(1, -1);
        glTexCoord2d(1.0, 0.0);
        glVertex2d(1, 1);
        glTexCoord2d(0.0, 0.0);
        glVertex2d(-1, 1);
    glEnd();
    glFlush();
} 

void init()
{ 
    glClearColor(0.0, 0.0, 0.0, 0.0);
    glColor3d(1.0, 1.0, 1.0);
    glEnable(GL_TEXTURE_2D);
  
    pngInfo info;
    texture = pngBind(\"tree.png\", PNG_NOMIPMAP, PNG_ALPHA, &info, GL_CLAMP, GL_NEAREST, GL_NEAREST);
} 
  
int main(int argc, char** argv)
{ 
    glutInit(&argc, argv);
    glutInitDisplayMode(GLUT_SINGLE | GLUT_RGBA);
    glutInitWindowSize(100, 100);
    glutInitWindowPosition(100, 100);
    glutCreateWindow(\"hunter\");
    glutDisplayFunc(display);
    init();
    glutMainLoop();
} </code></pre>

Macのframeworkという仕組みがイマイチわかってないんですが、下記でコンパイルできました。</p>

<pre><code>% cc -framework GLUT -framework OpenGL -o game game.c libglpng.a</code></pre>

<p><a href=\"http://www.flickr.com/photos/komagata/4438626946/\" title=\"tree by komagata, on Flickr\"><img src=\"http://farm5.static.flickr.com/4062/4438626946_57be732632_o.png\" width=\"100\" height=\"122\" alt=\"tree\" /></a></p>

<p>ソース：<a href=\"http://github.com/komagata/glut/tree/master/10/\">10 at master from komagata's glut - GitHub</a></p>"
 :AUTHOR "komagata" :DATE 3477747671 :CATEGORY "OpenGL")
(:PATH "/3477781577" :TITLE "Core Animationで遊んでみる (1)" :BODY
 "<p>こんにちは。masudaです。<br />
三寒四温な日々が続いていますが、いかがお過ごしでしょうか？</p>
<p>Leopardの目玉機能の一つはCore Animationでした。<br />
Appleの触れ込みによると、Core Animationを利用すると簡単にアニメーション処理を追加することができるそうです。</p>

<p>なんですが、アニメーションではないところでも、便利に使うことができます。<br />
今回はiPhone SDKを用いて、そのちょっと便利な使い方を書こうと思います。</p>

<p>以下のサンプルでは全部<br />
QuartzCore.frameworkをincludeし<br />
<pre>#import &lt;QuartzCore/QuartzCore.h&gt;</pre>
とimportをすることが必要です。</p>

<h2>UIViewを角丸にする</h2>
<p>UIViewを角丸にするのはとても簡単です。</p>

<pre>[[view layer] setCornerRadius:10.0];
[view setClipsToBounds:YES];</pre>

<h2>UIViewに枠線を追加する</h2>
<pre>[[view layer] setBorderColor:[[UIColor lightGrayColor] CGColor]];
[[view layer] setBorderWidth:1.0];</pre>

<p>setBorderColorメッセージの引数はCGColorなので、上記のようにUIColorからCGColorに変更してあげる必要があります。</p>"
 :AUTHOR "masuda" :DATE 3477781577 :CATEGORY "")
(:PATH "/3477957044" :TITLE "Lisp on Rails 第6回 〜 ここらでリファクタリング" :BODY
 "<p class=\"first\">こんにちは!! tahara です。
Lisp on Rails 第6回です!</p>

<p>has-one を has-many のコピペで書いてしまったので、
ここらでリファクタリングしたいと思います。</p>

<p>has-one のスロット定義</p>

<pre class=\"src\">
(<span style=\"color: #00ffff;\">defclass</span> <span style=\"color: #98fb98;\">ar-has-one-slot-mixin</span> ()
  ((has-one <span style=\"color: #b0c4de;\">:initarg</span> <span style=\"color: #b0c4de;\">:has-one</span>
            <span style=\"color: #b0c4de;\">:initform</span> nil
            <span style=\"color: #b0c4de;\">:accessor</span> has-one)
   (class-symbol <span style=\"color: #b0c4de;\">:initarg</span> <span style=\"color: #b0c4de;\">:class-symbol</span>
                 <span style=\"color: #b0c4de;\">:initform</span> nil
                 <span style=\"color: #b0c4de;\">:accessor</span> class-symbol)))

(<span style=\"color: #00ffff;\">defmethod</span> <span style=\"color: #87cefa;\">initialize-instance</span> <span style=\"color: #b0c4de;\">:after</span> ((self ar-has-one-slot-mixin) <span style=\"color: #98fb98;\">&amp;rest</span> args)
  (<span style=\"color: #00ffff;\">declare</span> (ignore args))
  (<span style=\"color: #00ffff;\">unless</span> (class-symbol self)
    (setf (class-symbol self) (has-one self))))

(<span style=\"color: #00ffff;\">defclass</span> <span style=\"color: #98fb98;\">ar-has-one-direct-slot-definition</span> (ar-direct-slot-definition
                                             ar-has-one-slot-mixin)
  ())

(<span style=\"color: #00ffff;\">defclass</span> <span style=\"color: #98fb98;\">ar-has-one-effective-slot-definition</span> (ar-effective-slot-definition
                                                ar-has-one-slot-mixin)
  ())
</pre>

<p>has-many のスロット定義</p>

<pre class=\"src\">
(<span style=\"color: #00ffff;\">defclass</span> <span style=\"color: #98fb98;\">ar-has-many-slot-mixin</span> ()
  ((has-many <span style=\"color: #b0c4de;\">:initarg</span> <span style=\"color: #b0c4de;\">:has-many</span>
             <span style=\"color: #b0c4de;\">:initform</span> nil
             <span style=\"color: #b0c4de;\">:accessor</span> has-many)
   (class-symbol <span style=\"color: #b0c4de;\">:initarg</span> <span style=\"color: #b0c4de;\">:class-symbol</span>
                 <span style=\"color: #b0c4de;\">:initform</span> nil
                 <span style=\"color: #b0c4de;\">:accessor</span> class-symbol)))

(<span style=\"color: #00ffff;\">defmethod</span> <span style=\"color: #87cefa;\">initialize-instance</span> <span style=\"color: #b0c4de;\">:after</span> ((self ar-has-many-slot-mixin) <span style=\"color: #98fb98;\">&amp;rest</span> args)
  (<span style=\"color: #00ffff;\">declare</span> (ignore args))
  (<span style=\"color: #00ffff;\">unless</span> (class-symbol self)
    (setf (class-symbol self)
          (sym (singularize (has-many self))))))

(<span style=\"color: #00ffff;\">defclass</span> <span style=\"color: #98fb98;\">ar-has-many-direct-slot-definition</span> (ar-direct-slot-definition
                                              ar-has-many-slot-mixin)
  ())

(<span style=\"color: #00ffff;\">defclass</span> <span style=\"color: #98fb98;\">ar-has-many-effective-slot-definition</span> (ar-effective-slot-definition
                                                 ar-has-many-slot-mixin)
  ())
</pre>

<p>いやー、ひどいですね。
ほとんど one と many の違いだけです。</p>

<p>さて、これをリファクタリングするのに Common Lisp
にはマクロという手抜きプログラマには必須の機能があります。</p>

<p>普通リファクタリングするとなると、関数、メソッド、スーパークラス等々の
切り出しが必要になりますよね？
でも、マクロなら何ら設計を変更することなくリファクタリングが可能になります。</p>

<p>では、実際にマクロを使ってリファクタリングしてみましょう。</p>

<pre class=\"src\">
(<span style=\"color: #00ffff;\">defmacro</span> <span style=\"color: #87cefa;\">def-has-xxx-slot-definition</span> (xxx
                                       default-class-symbol-form)
  `(<span style=\"color: #00ffff;\">progn</span>
     (<span style=\"color: #00ffff;\">defclass</span> ,(sym <span style=\"color: #ffa07a;\">\"ar-has-\"</span> xxx <span style=\"color: #ffa07a;\">\"-slot-mixin\"</span>) ()
       ((,(sym <span style=\"color: #ffa07a;\">\"has-\"</span> xxx) <span style=\"color: #b0c4de;\">:initarg</span> ,(key-sym <span style=\"color: #ffa07a;\">\"has-\"</span> xxx)
                 <span style=\"color: #b0c4de;\">:initform</span> nil
                 <span style=\"color: #b0c4de;\">:accessor</span> ,(sym <span style=\"color: #ffa07a;\">\"has-\"</span> xxx))
        (class-symbol <span style=\"color: #b0c4de;\">:initarg</span> <span style=\"color: #b0c4de;\">:class-symbol</span>
                      <span style=\"color: #b0c4de;\">:initform</span> nil
                      <span style=\"color: #b0c4de;\">:accessor</span> class-symbol)))

     (<span style=\"color: #00ffff;\">defmethod</span> <span style=\"color: #87cefa;\">initialize-instance</span> <span style=\"color: #b0c4de;\">:after</span> ((self ,(sym <span style=\"color: #ffa07a;\">\"ar-has-\"</span> xxx <span style=\"color: #ffa07a;\">\"-slot-mixin\"</span>)) <span style=\"color: #98fb98;\">&amp;rest</span> args)
        (<span style=\"color: #00ffff;\">declare</span> (ignore args))
        (<span style=\"color: #00ffff;\">unless</span> (class-symbol self)
          (setf (class-symbol self) ,default-class-symbol-form)))

     (<span style=\"color: #00ffff;\">defclass</span> ,(sym <span style=\"color: #ffa07a;\">\"ar-has-\"</span> xxx <span style=\"color: #ffa07a;\">\"-direct-slot-definition\"</span>) (ar-direct-slot-definition
                                                  ,(sym <span style=\"color: #ffa07a;\">\"ar-has-\"</span> xxx <span style=\"color: #ffa07a;\">\"-slot-mixin\"</span>))
       ())

     (<span style=\"color: #00ffff;\">defclass</span> ,(sym <span style=\"color: #ffa07a;\">\"ar-has-\"</span> xxx <span style=\"color: #ffa07a;\">\"-effective-slot-definition\"</span>) (ar-effective-slot-definition
                                                     ,(sym <span style=\"color: #ffa07a;\">\"ar-has-\"</span> xxx <span style=\"color: #ffa07a;\">\"-slot-mixin\"</span>))
       ())
     ))

(def-has-xxx-slot-definition one (has-one self))
(def-has-xxx-slot-definition many (sym (singularize (has-many self))))
</pre>

<p>すばらい。
最初のひどい設計を何ら変えることなくリファクタリングできました。</p>

<p>手抜き設計のベタ書きコードそのままで、リファクタリングを可能とするマクロは、
未熟なプログラマにとって、なくてはならない存在です。</p>

<p>ソースはこちらから <a href=\"http://github.com/quek/lisp-on-rails\">http://github.com/quek/lisp-on-rails</a></p>

<p>第7回につづきます。</p>
"
 :AUTHOR "tahara" :DATE 3477957044 :CATEGORY "Lisp on Rails")
(:PATH "/3478295613" :TITLE "プレゼンハムで直線を書く関数" :BODY "<p>komagataです。</p>

<p>以前のプログラムで使った、javascriptでプレゼンハムアルゴリズムを使って2点間を結ぶ直線の座標を求める関数を単体で使えるように切り出してみました。</p>

<pre><code>#!/usr/bin/env js

/**
 * Build line's path by Bresenham algorithm
 *
 * @arguments Array src - line source coordinate. (Ex: [12, 32])
 * @arguments Array dest - line destination coordinate. (Ex: [41, 55])
 * @return Array - builded path array. (Ex: [[12, 32], ... [41, 55]])
 */
var build_path = function(src, dest) {
  var next_x = src[0],
      next_y = src[1],
      delta_x = dest[0] - src[0],
      delta_y = dest[1] - src[1],
      step_x,
      step_y,
      step = 0,
      fraction = 0,
      path = []

  if (delta_x &lt; 0) {
    step_x = -1
  } else {
    step_x = 1
  }
  if (delta_y &lt; 0) {
    step_y = -1
  } else {
    step_y = 1
  }

  delta_x = Math.abs(delta_x * 2)
  delta_y = Math.abs(delta_y * 2)

  path[step] = [next_x, next_y]
  step++

  if (delta_x &gt; delta_y) {
    fraction = delta_y - delta_x / 2
    while (next_x != dest[0]) {
      if (fraction &gt;= 0) {
        next_y += step_y
        fraction -= delta_x
      }
      next_x += step_x
      fraction += delta_y
      path[step] = [next_x, next_y]
      step++
    }
  } else {
    fraction = delta_x - delta_y / 2
    while (next_y != dest[1]) {
      if (fraction &gt;= 0) {
        next_x += step_x
        fraction -= delta_y
      }
      next_y += step_y
      fraction += delta_x
      path[step] = [next_x, next_y]
      step++
    }
  }
  return path
}

// print path
var way = build_path([152, 152], [162, 136])
for (var i = 0; i < way.length; i++) {
  print(way[i])
}</code></pre>

<pre><code>152,152
153,151
153,150
154,149
155,148
155,147
156,146
156,145
157,144
158,143
158,142
159,141
160,140
160,139
161,138
161,137
162,136</code></pre>

<p>座標には配列を使っています。この辺の基本的な機能はWebGLとかでまとまって実装されればいいなと思います。</p>"
 :AUTHOR "komagata" :DATE 3478295613 :CATEGORY "javascript")
(:PATH "/3478391136" :TITLE "Core Animationで遊んでみる (2)" :BODY
 "<p>英文のタイプは日本語のタイプと違うものなので、頭の変なところを使って意外と難しいということを最近知ったmasudaです。</p>

<p>今回も<a href=\"http://tech.actindi.net/3477781577\">前回</a>に引き続き、Core Animationで少し遊んでみたいと思います。<br />
これも簡単にできるフェード処理です。</p>

<p><a href=\"http://tech.actindi.net/3477781577\">前回</a>と同様、QuartzCore.frameworkをincludeし、</p>
<pre>#import &lt;QuartzCore/QuartzCore.h&gt;</pre>
<p>とimportすることが必要です。</p>

<p>さて実際にフェード処理を記述してみましょう。<br />
たとえば、hogeViewというViewをフェードアウトしてみます。</p>

<pre>CATransition    *transition;
transition = [CATransition animation];

// トランジション時間の設定（これだと1秒）。
[transition setDuration:1.0f];

// トランジションの種類の設定、今回はフェード。
[transition setType:kCATransitionFade];

// トランジション中に起こす処理を記述。
[hogeView setHidden:YES];

// トランジションを実行。
[[[self view] layer] addAnimation:transition forKey:@\"layerAnimation\"];</pre>

<p>フェードインの時はsetHiddenをNoですね。</p>

<p>この方法を用いて、もう一つサンプルを書いてみます。<br />
UINavigationItemのright/leftButtonItemを設定する際にはanimated:YESとすることでフェードイン/アウトしてくれますが、TitleViewはそのような項目はないのでこの方法を使えないかと思いやってみたらできました。
</p>

<p>TitleViewにはUISegmentedControlを設定することにします。</p>

<pre>CATransition    *transition;
transition = [CATransition animation];

[transition setDuration:1.0f];
[transition setType:kCATransitionFade];
[[self navigationItem] setTitleView:segmentedControl];
[[[[self navigationController] navigationBar] layer] addAnimation:transition forKey:@\"layerAnimation\"];</pre>"
 :AUTHOR "masuda" :DATE 3478391136 :CATEGORY "objective-c")
(:PATH "/3478497183" :TITLE "WordPressのプラグイン Contact Form 7 が便利だった件" :BODY
 "こんにちは、chibaです。
<br>
現在、WordPressを通してPHPの文化を勉強中です。
<br>
アンケートや申込みのフォームを作成することは度々あるかと思うのですが、WordPressでそれを実現する定番プラグインにContact Form 7というのがあることを知りました。
今回、Contact Form 7を利用するにあたり、利用したい機能をどうやって設定するかを調べてみたのでメモ。

<h3>自動返信のサンクスメールを飛したい</h3>
Contact Form 7では、通知用とその他の予備で、2通の通知メールを出すことができます。
<br>
このメール(2)の設定で、申込者のメールアドレスを送り先に指定すれば、自動返信のサンクスメールを設定することが可能でした。便利ですね。
<br>
<h3>サンクスページを設置したい</h3>
WordPress管理画面から お問い合わせ > その他の設定 の欄に、
<pre>
on_sent_ok: \"location.replace('サンクスページのURL');\"
</pre>
と記述することによって、で正常に送信できた後のリダイレクトを設定することができます。便利ですね。
<br>
<h3>UTF-8ではなく、JIS(iso-2022)のメールを送信したい</h3>
これは、Contact Form 7の設定ではないのですが、大体組み合せで発生する問題だと思うので、ここに書いておきたいと思います。
<br>
WordPressではデフォルトの設定では、UTF-8のメールが飛ぶようです。最近のメーラーだとUTF-8のメールも普通に読めますが、対応してない環境も多数あるかと思います。
<br>
ということで、UTF-8ではなく、JISにしたいのですが、変更するには、
WP Multibyte Patch というプラグインで設定するのが定番のようです。
<br>
設定ファイルのサンプルが-sample.phpとして付属してきますので、これをリネームして利用します。
<pre>
wp-content/plugins/wp-multibyte-patch/wpmp-config-sample.php
=>
wp-content/plugins/wp-multibyte-patch/wpmp-config.php
</pre>
<pre>
wp-content/plugins/wp-multibyte-patch/ext/ja/config-sample.php
=>
wp-content/plugins/wp-multibyte-patch/ext/ja/config.php
</pre>
という感じにリネーム。
<br>
wp-content/plugins/wp-multibyte-patch/ext/ja/config.php の内容は、
<pre>
&lt;?php
/* WP Multibyte Patch extension config file */

// Set mail mode.
// \"auto\" picks  \"jis\" or \"UTF-8\" automatically.
// \"jis\" or \"UTF-8\" fix the encoding method to its name.
$wpmp_conf['mail_mode'] = 'jis';   // auto, jis, UTF-8

?&gt;
</pre>
ですが、ここでjisを指定することになるようです。リネームしたら、プラグインを有効化し、テストしてJISでメールが届いているかを確認します。
<br>
色々な人が様々な便利/拡張機能を提供していてWordPress/PHP素晴らしいですね。
■
"
 :AUTHOR "chiba" :DATE 3478497183 :CATEGORY "WordPress")
(:PATH "/3478630834" :TITLE
 "Lisp on Rails 第7回 〜 ActiveRecord::Base の find メソッド" :BODY
 "<p class=\"first\">遅くなりました!! tahara です。
Lisp on Rails 第7回です!</p>

<p>今回は ActiveRecord::Base の find メソッドの機能を多少実装してみたいと思います。</p>

<p>ActiveRecord::Base の find メソッドは次の4つの使い方があります。</p>

<ol>
<li>id で検索。
引数は <code>(id, *args), (id1, id2, ..., *args),
([id1, id2, ..., *args])</code> の3パターン。
該当するレコードがない場合は <code>RecordNotFound</code> が発生する。</li>
<li>最初の1件を検索。
引数は <code>(:first, *args)</code> で、該当がない場合は nil を返す。
<code>Model.first(*args)</code> というショートカットがある。</li>
<li>最後の1件を検索。
引数は <code>(:last, *args)</code> で、該当がない場合は nil を返す。
<code>Model.last(*args)</code> というショートカットがある。</li>
<li>該当する全件を検索。
引数は <code>(:all, &amp;args)</code> で、該当がない場合は nil を返す。
<code>Model.all(*args)</code> というショートカットがある。</li>
</ol>

<p>上記の4つの使い方全てで次のハッシュオプションが使えます。</p>

<ul>
<li>:conditions - いわゆる検索条件。文字列またはリストで指定。</li>
<li>:order - SQL の ORDEY BY</li>
<li>:group - SQL の GROUP BY</li>
<li>:having - SQL の HAVING</li>
<li>:limit - 最大取得件数。</li>
<li>:offset - 取得開始位置。</li>
<li>:joins - SQL の JOIN だけど、普通次の :include を使う。</li>
<li>:include - 検索時に一緒にとってくるテーブルをアソシエーション名(has_many :xxxs)で指定する。</li>
<li>:select - 取得カラム。デフォルトは &quot;*&quot;。</li>
<li>:from - SQL の FROM。ビューから検索するとき等に使える。</li>
<li>:readonly - 取得結果をリードオンリー指定する。</li>
<li>:lock - SQL でのロック。&quot;FOR UPDATE&quot; とか。</li>
</ul>

<p>このような場合 Common Lisp ではマルチディスパッチとキーワード引数を使えばうまくいくはずです。</p>

<pre class=\"src\">
<span style=\"color: #ff7f24;\">;; </span><span style=\"color: #ff7f24;\">find は CL にあるので select にする
</span>(<span style=\"color: #00ffff;\">defgeneric</span> <span style=\"color: #87cefa;\">select</span> (class id-or-keyword
                          <span style=\"color: #98fb98;\">&amp;key</span>
                          conditions
                          order
                          group
                          having
                          limit
                          offset
                          joins
                          include
                          select
                          from
                          readonly
                          lock
                          <span style=\"color: #98fb98;\">&amp;allow-other-keys</span>))

(<span style=\"color: #00ffff;\">defmethod</span> <span style=\"color: #87cefa;\">select</span> ((class symbol) id-or-keyword <span style=\"color: #98fb98;\">&amp;rest</span> args)
  (apply #'select (find-class class) id-or-keyword args))

(<span style=\"color: #00ffff;\">defmethod</span> <span style=\"color: #87cefa;\">select</span> ((class active-record-class) (id integer)
                   <span style=\"color: #98fb98;\">&amp;rest</span> args
                   <span style=\"color: #98fb98;\">&amp;key</span> conditions)
  (setf conditions (append (list <span style=\"color: #b0c4de;\">:id</span> id) conditions))
  ...)

(<span style=\"color: #00ffff;\">defmethod</span> <span style=\"color: #87cefa;\">select</span> ((class active-record-class) (ids list)
                   <span style=\"color: #98fb98;\">&amp;rest</span> args
                   <span style=\"color: #98fb98;\">&amp;key</span> conditions)
  (setf conditions (append (list <span style=\"color: #b0c4de;\">:id</span> ids) conditions))
  ...)

(<span style=\"color: #00ffff;\">defmethod</span> <span style=\"color: #87cefa;\">select</span> ((class active-record-class) (keyword (eql <span style=\"color: #b0c4de;\">:all</span>))
                   <span style=\"color: #98fb98;\">&amp;rest</span> args)
  ...)

(<span style=\"color: #00ffff;\">defmethod</span> <span style=\"color: #87cefa;\">select</span> ((class active-record-class) (keyword (eql <span style=\"color: #b0c4de;\">:first</span>))
                   <span style=\"color: #98fb98;\">&amp;rest</span> args
                   <span style=\"color: #98fb98;\">&amp;key</span> (order <span style=\"color: #ffa07a;\">\"id\"</span>))
  ...)

(<span style=\"color: #00ffff;\">defmethod</span> <span style=\"color: #87cefa;\">select</span> ((class active-record-class) (keyword (eql <span style=\"color: #b0c4de;\">:last</span>))
                   <span style=\"color: #98fb98;\">&amp;rest</span> args
                   <span style=\"color: #98fb98;\">&amp;key</span> (order <span style=\"color: #ffa07a;\">\"id\"</span>))
  ...)

(<span style=\"color: #00ffff;\">defun</span> <span style=\"color: #87cefa;\">all</span> (<span style=\"color: #98fb98;\">&amp;rest</span> args)
  (apply #'select (car args) <span style=\"color: #b0c4de;\">:all</span> (cdr args)))
<span style=\"color: #ff7f24;\">;; </span><span style=\"color: #ff7f24;\">first と last は CL パッケージとかぶる。
</span></pre>

<p>といった感じで実装してみました。
joins, include, readonly 等はまだ未実装です。</p>

<p>しかし Common Lisp パッケージとシンボル名(find, first, last)がかぶるのが悩ましいところです。shadowing しようかしらん。</p>

<p>ソースはこちらから <a href=\"http://github.com/quek/lisp-on-rails\">http://github.com/quek/lisp-on-rails</a></p>

<p>第8回につづきます。</p>
"
 :AUTHOR "tahara" :DATE 3478630834 :CATEGORY "Lisp on Rails")
(:PATH "/3478908901" :TITLE "任意のイベントを受付け、発火できるオブジェクト" :BODY "<p>komagataです。</p>

<p>canvasでウロウロするシリーズも少しコードが汚くなって来たのでリファクタリングしました。</p>

<p><a href=\"http://komagata.org/canvas-prowler/4/\" title=\"iPhone シミュレータ by komagata, on Flickr\"><img src=\"http://farm3.static.flickr.com/2764/4475465234_6cfd5ce536_o.png\" width=\"287\" height=\"550\" alt=\"iPhone シミュレータ\" /></a></p>

<p><a href=\"http://komagata.org/canvas-prowler/4/\">canvasでウロウロする４</a></p>

<p>コンストラクタの継承が出来なかったのを<a href=\"http://amazon.jp/dp/4873113911/saikyoline-22\">JavaScript: The Good Parts</a>に載っていた関数型の継承を使って書き直しました。</p>

<p>また、同じく同書に載っている、任意のオブジェクトに任意のイベントを受付け、発火できる機能を追加する、とても便利なeventuality関数を使うように書き換えました。</p>

<pre><code>var eventuality = function(that) {
  var registry = {}

  that.fire = function(event) {
    var array, func, handler,
        type = typeof event === 'string' ? event : event.type

    if (registry.hasOwnProperty(type)) {
      array = registry[type]
      for (var i = 0; i < array.length; i++) {
        handler = array[i]
        func = handler.method
        if (typeof func === 'string') {
          func = this[func]
        }
        func.apply(this, handler.parameters || [event])
      }
    }
    return this
  }

  that.on = function(type, method, parameters) {
    var handler = {method: method, parameters: parameters}
    if (registry,hasOwnProperty(type)) {
      registry[type].push(handler)
    } else {
      registry[type] = [handler]
    }
    return this
  }

  return that
}</code></pre>

<p>eventuality関数はonとfireの二つのメソッドを持ちます。onで任意の名前のイベントを登録し、fireで発火します。</p>

<p>eventuality関数を継承したオブジェクトは全て同機能を持つのでenterframeイベントを持ったspriteオブジェクトなどがとても簡単につくれるようになりました。</p>

<pre><code>var sprite = function(img_src, x, y, width, height) {
  var that = eventuality()
  that.img = new Image
  that.img.src = img_src
 
  that.on('enterframe', function(){
    that.game.context.drawImage(
      that.img,
      that.x,
      that.y,
      that.width,
      that.height
    )
  })
 
  return that
}</code></pre>

<p>こんな感じで好き勝手なイベントが作れるのが便利です。</p>

<p>コード：<a href=\"http://github.com/komagata/canvas-prowler/tree/master/4/\">4 at master from komagata's canvas-prowler - GitHub</a></p>

<table><tr><td><a href=\"http://amazon.jp/dp/4873113911/saikyoline-22\"><img src=\"http://ecx.images-amazon.com/images/I/41H0Dk-K3PL._SL160_.jpg\" width=\"124\" height=\"160\" alt=\"JavaScript: The Good Parts ―「良いパーツ」によるベストプラクティス\" title=\"JavaScript: The Good Parts ―「良いパーツ」によるベストプラクティス\" border=\"0\"/></a></td><td><ul><li><a href=\"http://amazon.jp/dp/4873113911/saikyoline-22\">JavaScript: The Good Parts ―「良いパーツ」によるベストプラクティス</a></li><li>オライリージャパン(2008-12-22)</li><li>オライリージャパン</li><li>(翻訳)水野 貴明</li><li>定価：￥ 1,890</li><li>新品価格：￥ 1,890</li><li>中古価格：￥ 2,180</li><li>ASIN：4873113911</li></ul></td></tr></table>"
 :AUTHOR "komagata" :DATE 3478908901 :CATEGORY "javascript")
(:PATH "/3479687420" :TITLE "It's all textとCodaの連携" :BODY "chibaです。
<br>
WordPressで作業していると、フォーム内のHTMLを編集する必要が出てくることが割と多いのですが、フォーム内の貧弱な編集機能であれこれするのはとても面倒です。
<br>
こういう時に自分が愛用しているのは、FireFoxのアドオンの<a href=\"https://addons.mozilla.org/ja/firefox/addon/4125\">It's All Text!</a>です。
<br>
結構便利なので、フォームの中身はことごとく呼び出したEmacsから編集しているのですが、便利なのでシステム系の人以外のデザイナーさん達にもお薦めしたいです。
<br>
そんな感じで、社内でも布教していたのですが、<a href=\"http://www.panic.com/jp/coda/\">Coda</a>との組み合わせで上手く動かなかったので、メモ。
<br>
Codaには、コマンドラインから起動できる便利な<a href=\"http://wefoundland.com/project/command-line_coda/\">Command-Line Coda</a>という便利スクリプトがあるのですが、これとの組み合わせで上手く動かない現象に遭遇
<br>
原因を探ってみたところ、どうやら、ファイルのパス名にスペースが入ってしまっているのが原因ではないかということで、
<pre>
#!/bin/sh

/usr/local/bin/coda `echo $*|sed 's/ /\\\\ /g'`
</pre>
のような適当なスクリプトを作成して、/usr/local/bin/its-all-codaのような名前で保存し、これをIt's All Text!から呼ぶことにしてみたところ解決。
<br>
sed便利です。
<br>
■
"
 :AUTHOR "chiba" :DATE 3479687420 :CATEGORY "Coda")
(:PATH "/3479881378" :TITLE "Lisp on Rails 第8回 〜 before_*" :BODY
 "<p class=\"first\">こんにちは!! tahara です。
Lisp on Rails 第8回です!</p>

<p>今回は ActiveRecord::Base の save, create, update, destroy 等々のメソッドには
beforo_* や after_* というフックメソッドを定義することができます。
ActiveRecord::Callbacks でそのあたりの実装がされています。</p>

<p>これを Common Lisp でやろうとした場合、</p>

<pre class=\"src\">
(<span style=\"color: #00ffff;\">defmethod</span> <span style=\"color: #87cefa;\">save</span> <span style=\"color: #b0c4de;\">:before</span> ((self post)) ...)
</pre>
で OK と思ったらそうはいきません。
before_* メソッドが false を返した場合はメソッドを呼び出しを中断する必要があります。
Common Lisp の before メソッドは返り値は無視してしまうので、そのまま使うことはできないのです。

<p>仕方ないので自分で新しいメソッドコンビネーションを実装します。</p>

<pre class=\"src\">
(<span style=\"color: #00ffff;\">define-method-combination</span> <span style=\"color: #87cefa;\">active-record</span> ()
  ((around (<span style=\"color: #b0c4de;\">:around</span>))
   (before (<span style=\"color: #b0c4de;\">:before</span>))
   (primary () <span style=\"color: #b0c4de;\">:required</span> t)
   (after (<span style=\"color: #b0c4de;\">:after</span>)))
  <span style=\"color: #ffa07a;\">\"before メソッドが nil を返した場合メソッドの実行を中断する。\"</span>
  (<span style=\"color: #00ffff;\">flet</span> ((call-methods (methods)
           (mapcar #'(<span style=\"color: #00ffff;\">lambda</span> (method)
                       `(call-method ,method))
                   methods))
         (call-methods-and (methods)
           `(and ,@(mapcar #'(<span style=\"color: #00ffff;\">lambda</span> (method)
                               `(call-method ,method))
                           methods))))
    (<span style=\"color: #00ffff;\">let</span> ((form (<span style=\"color: #00ffff;\">if</span> (or before after (rest primary))
                    `(<span style=\"color: #00ffff;\">when</span> ,(call-methods-and before)
                       (<span style=\"color: #00ffff;\">multiple-value-prog1</span>
                           (call-method ,(first primary)
                                        ,(rest primary))
                         ,@(call-methods (reverse after))))
                    `(call-method ,(first primary)))))
      (<span style=\"color: #00ffff;\">if</span> around
          `(call-method ,(first around)
                        (,@(rest around)
                           (make-method ,form)))
          form))))
</pre>

<p>あとは defgeneric するときにこのメソッドコンビネーションを指定すれば OK です。</p>

<pre class=\"src\">
(<span style=\"color: #00ffff;\">defgeneric</span> <span style=\"color: #87cefa;\">save</span> (record)
  (<span style=\"color: #b0c4de;\">:method-combination</span> active-record)
  ...)
</pre>

<p>簡単にメソッドの呼び出し方法を定義できてしまうなんて Common Lisp はいい言語ですね。</p>

<p>ソースはこちらから <a href=\"http://github.com/quek/lisp-on-rails\">http://github.com/quek/lisp-on-rails</a></p>

<p>第9回につづきます。</p>
"
 :AUTHOR "tahara" :DATE 3479881378 :CATEGORY "Lisp on Rails")
(:PATH "/3480206140" :TITLE "UITableViewにcellを動的に追加/削除する2つの方法。" :BODY
 "<p>こんにちはmasudaです。</p>
				<p>今回はUITableViewにcellを動的に追加/削除するということについて書こうと思います。</p> 
				<p>特にこれまでUITableViewのbeginUpdatesとendUpdatesという二つのメソッドを、いったいどんな場合に使用したらいいのか明確になっていませんでした。<br /> 
				ここら辺を重点的に書きたいと思います。</p> 
				<p>以下のAppleの公式ドキュメントにかなり詳しく書かれています。<br /> 
				<a target=\"_blank\" href=\"http://developer.apple.com/iphone/library/documentation/UserExperience/Conceptual/TableView_iPhone/ManageInsertDeleteRow/ManageInsertDeleteRow.html\">Table View Programming Guide for iPhone OS: Inserting and Deleting Rows and Sections</a></p> 
				<h2>cellを一つずつ追加/削除していく場合</h2> 
				<p>cellを一つずつ追加/削除していく場合には、beginUpdates/endUpdatesの出番はありません。<br /> 
				追加/削除したいcellのindexPathを作成してinsert(or delete)RowsAtIndexPaths:withRowAnimation:メソッドを呼ぶだけ。<br /> 
				単純です。</p> 
				<p>ただし注意点はinsertRowsAtIndexPaths:withRowAnimation:メソッドを呼ぶと、UITableViewDataSourceのtableView:cellForRowAtIndexPath:メソッドが呼ばれるということ。<br /> 
				すなわち、cellの中身をNSArray等で管理している場合にはあらかじめNSArrayの内容を変更しておかなければなりません。</p> 
				<p><a target=\"_blank\" href=\"http://www.cocoalife.net/2008/12/post_767.html\">cocoa*life &#8211; UITableViewCellを削除ボタンを使って削除する</a></p> 
				<h2>複数のcellをいっぺんに追加/削除する場合</h2> 
				<p>ここまではbeginUpdatesやendUpdatesを使用する必要はありません。<br /> 
				では、どういうときに使用するべきなのか？</p> 
				<p>ポイントはbeginUpdates/endUpdatesに関することが書かれているセクションのタイトルがBatch Insertion and Deletion of Rows and Sectionsであるということ。<br /> 
				batchというのは英語で束という意味なので、「いっぺん」に複数のcellを処理したいときに使うということになります。</p> 
				<p>つまり、このメソッドを使用するかしないかの選択基準の違いは、一つずつかいっぺんかということになります。<br /> 
				もちろん複数のcellを追加/削除したい場合であっても、一つずつ追加/削除することができます。</p> 
				<p>beginUpdatesとendUpdatesで追加/削除のメソッド群を挟みます。<br /> 
				endUpdatesを呼び出したあと、tableView:cellForRowAtIndexPath:メソッドが呼ばれ、追加と削除の結果が表示されます。</p> 
				<p>beginUpdatesとendUpdatesで挟まれた追加/削除の挙動は、公式ドキュメントに以下のように書かれています。</p> 
				<dl class=\"quote\"> 
				<dd> 
				<blockquote> 
				<p>The code calls the deleteRowsAtIndexPaths:withRowAnimation: method <strong>after</strong> it calls insertRowsAtIndexPaths:withRowAnimation:. However, this is <strong>not the order</strong> in which UITableView completes the operations. It defers <strong>any insertions</strong> of rows or sections <strong>until after</strong> it has handled the deletions of rows or sections. This happens <strong>regardless of ordering of the insertion and deletion</strong> method calls.</p> 
				<p>Deletions within an animation block specify which rows and sections in the <strong>original</strong> table should be removed; insertions specify which rows and sections should be added to the <strong>resulting</strong> table.</p> 
				</blockquote> 
				</dd> 
				<dt class=\"cite\"> 引用元: <a target=\"_blank\" href=\"http://developer.apple.com/iphone/library/documentation/UserExperience/Conceptual/TableView_iPhone/ManageInsertDeleteRow/ManageInsertDeleteRow.html\">Table View Programming Guide for iPhone OS: Inserting and Deleting Rows and Sections</a>（強調は引用者による）</dt> 
				</dl> 
				<p>この文章をまとめてみました。<br /> 
				（前提条件としてbeginUpdates/endUpdatesで囲まれている中では）</p> 
				<ul> 
				<li>deleteRowsAtIndexPaths:withRowAnimation:メソッドをinsertRowsAtIndexPaths:withRowAnimation:メソッドの前に呼ぶことは必須ではない（not the order）。</li> 
				<li>実際のcellの追加は削除のあとに行われる。上記メソッドの呼び出し順序は影響を及ぼさない（regardless of ordering of the insertion and deletion）。</li> 
				<li>削除時のindexPathにはbeginUpdates呼び出し前、元々の（original）テーブルに対するものを指定し、追加時は削除後の結果となる（resulting）テーブルに対するものを指定する。</li> 
				</ul> 
				<p>このような仕組みにすることで、以下のページに書かれているように1つのcellを削除するごとにindexPathを調整することが必要なく、削除を直感的に行うことが出来ます。<br /> 
				<a target=\"_blank\" href=\"http://iphone-dev.g.hatena.ne.jp/tokorom/20090604/1244083883\">テーブルのセルの削除や追加にbeginUpdates/endUpdatesは必要か(2) &#8211; iPhoneアプリ開発まっしぐら★ &#8211; iPhoneアプリ開発グループ</a></p> 
				<p>ということで、beginUpdates/endUpdatesメソッドはcellをいっぺんに追加/削除したい場合に使えばよい！ということになります。</p> 
				<h2>参考文献</h2> 
				<ul> 
				<li><a target=\"_blank\" href=\"http://developer.apple.com/iphone/library/documentation/UserExperience/Conceptual/TableView_iPhone/ManageInsertDeleteRow/ManageInsertDeleteRow.html\">Table View Programming Guide for iPhone OS: Inserting and Deleting Rows and Sections</a></li> 
				<li><a target=\"_blank\" href=\"http://iphone-dev.g.hatena.ne.jp/tokorom/20090603/1244008956\">テーブルのセルの削除や追加にbeginUpdates/endUpdatesは必要か(1) &#8211; iPhoneアプリ開発まっしぐら★ &#8211; iPhoneアプリ開発グループ</a></li> 
				<li><a target=\"_blank\" href=\"http://iphone-dev.g.hatena.ne.jp/tokorom/20090604/1244083883\">テーブルのセルの削除や追加にbeginUpdates/endUpdatesは必要か(2) &#8211; iPhoneアプリ開発まっしぐら★ &#8211; iPhoneアプリ開発グループ</a></li> 
				<li><a target=\"_blank\" href=\"http://www.cocoalife.net/2008/12/post_767.html\">cocoa*life &#8211; UITableViewCellを削除ボタンを使って削除する</a></li> 
				</ul>"
 :AUTHOR "masuda" :DATE 3480206140 :CATEGORY "objective-c")
(:PATH "/3480393573" :TITLE "Redmine_Importer便利です" :BODY "こんにちは、chibaです。
<br>
社内では、タスク管理にRedmineを導入していて、システムの人から、全然システムじゃない人まで利用しています。
<br>
Redmineは便利なのですが、定期的なチケットや、まとめての登録が面倒になってきました。
<br>
以前、<a href=\"http://events.php.gr.jp/events/show/80\">Redmine勉強会</a>のUstreamを眺めていて、csvから一括で登録できるというプラグインを紹介していたことを思いだしたので早速導入してみることにしました。
<a href=\"http://www.slideshare.net/juno/there-are-no-perfect-redmine\">junoさんの発表</a>で色々一括登録する方法が紹介されていますが、junoさんが日本語化されている<a href=\"http://www.martinliu.info/2009/04/redmine_importer-redmine-csv-import-plugin/\">Redmine_Importer</a>というものを導入してみることにしました。
<br>
インストールすると、プロジェクトの設定画面のモジュールのところから有効にできるモジュールとしてImporterが現われますので、これをオンにすると利用できます。
<br>
これで大量のチケットも楽に登録できます。ありがたや！
■"
 :AUTHOR "chiba" :DATE 3480393573 :CATEGORY "Redmine")
(:PATH "/3480889215" :TITLE "次の日のファイルも作りたい" :BODY
 "自分は、以前も「<a href=\"http://tech.actindi.net/3462883892\">Emacsでスクラッチファイルを日付順にして管理するライフハック</a>」で紹介したように日付を元にファイル名を付けて、スクラッチファイルやブログの下書きなどを書いているのですが、たまに、次の日付のファイルが欲しくなることがあります。
<br>
これはブログのネタになりそうだということで、そういうファイルを作成するEmacs Lispを適当に書いてみました。
<br>
自分は、Emacs Lispを書くときは、なんとなく(require 'cl)したくないのですが、欲しい関数を調べるのが億劫だったのでべたべたに(require 'cl)になってしまいました。
<pre>
(require 'cl)

(defun buffer-name-prefix ()
  (let ((buffer-name (buffer-name (current-buffer))))
    (substring buffer-name 0 (position-if #'digit-char-p buffer-name)) ))

(defun prefix-Y-m-d.suffix-to-list (string)
  (destructuring-bind 
      (prefix Y m &optional d)
      (split-string string \"-\")
    (when (and (null d)
               (every #'digit-char-p prefix) )
      (shiftf d m Y prefix \"\"))
    (destructuring-bind
        (d &optional suffix)
        (split-string d \"\\\\.\")
      (list prefix Y m d (or suffix \"\")) )))

(defun next-file-name (name)
  (destructuring-bind 
      (prefix Y m d suffix)
      (prefix-Y-m-d.suffix-to-list name)
    (let ((time (encode-time 0
                             0
                             0
                             (parse-integer d)
                             (parse-integer m)
                             (parse-integer Y)
                             nil
                             0) ))
      (concat (if (string= \"\" prefix) \"\" (concat prefix \"-\"))
              (format-time-string \"%Y-%m-%d\" (progn (incf (first time)) time))
              (if (string= \"\" suffix) \"\" (concat \".\" suffix)) ))))

(defun make-next-file ()
  (interactive)
  (find-file (next-file-name (buffer-name))) )
</pre>
使い方ですが、foo-2000-02-28.txtのようなファイル名のバッファで作業している時に(make-next-file)すると、foo-2000-02-29.txtのようなファイルをfind-fileします。
<br>
バッファの名前は、{prefix-}yyyy-mm-dd{.suffix}のようなものを想定していて、これ以外では上手く動きませんが、それなりに便利に使えています。Emacs便利です。
■"
 :AUTHOR "chiba" :DATE 3480889215 :CATEGORY "Emacs")
(:PATH "/3481090705" :TITLE "関連する単語" :BODY
 "<p class=\"first\">こんにちは!! tahara です。</p>

<p>少々事情があってある単語に関連する単語を自動的に取得したくなりました。
<a href=\"http://www.amazon.co.jp/集合知イン&#12539;アクション-Satnam-Alag/dp/4797352000/\">『集合知イン・アクション』</a> を参考に Common Lisp で書いてみました。</p>

<p>Yahoo の Web API を利用させていただきます。</p>

<ul>
<li>ウェブ検索とブログ検索で単語に関連するテキストを収集</li>
<li>日本語形態素解析で単語に分解</li>
<li>単語からタームベクトルを作成</li>
</ul>

<pre class=\"src\">
(<span style=\"color: #00ffff;\">eval-when</span> (<span style=\"color: #b0c4de;\">:compile-toplevel</span> <span style=\"color: #b0c4de;\">:load-toplevel</span> <span style=\"color: #b0c4de;\">:execute</span>)
  (<span style=\"color: #00ffff;\">require</span> <span style=\"color: #7fffd4;\">:drakma</span>)
  (<span style=\"color: #00ffff;\">require</span> <span style=\"color: #7fffd4;\">:cxml</span>)
  (<span style=\"color: #00ffff;\">require</span> <span style=\"color: #7fffd4;\">:cl-ppcre</span>))

(<span style=\"color: #00ffff;\">defparameter</span> <span style=\"color: #eedd82;\">*words*</span>
  '(<span style=\"color: #ffa07a;\">\"アナウンサー\"</span> <span style=\"color: #ffa07a;\">\"お医者さん\"</span> <span style=\"color: #ffa07a;\">\"イラストレーター\"</span> <span style=\"color: #ffa07a;\">\"宇宙飛行士\"</span>
    <span style=\"color: #ffa07a;\">\"タクシー運転手\"</span> <span style=\"color: #ffa07a;\">\"電車運転士\"</span> <span style=\"color: #ffa07a;\">\"バス運転士\"</span> <span style=\"color: #ffa07a;\">\"映画監督\"</span> <span style=\"color: #ffa07a;\">\"絵本作家\"</span>
    <span style=\"color: #ffa07a;\">\"演奏家\"</span> <span style=\"color: #ffa07a;\">\"歌手\"</span> <span style=\"color: #ffa07a;\">\"カメラマン\"</span> <span style=\"color: #ffa07a;\">\"看護師\"</span> <span style=\"color: #ffa07a;\">\"外交官\"</span> <span style=\"color: #ffa07a;\">\"画家\"</span> <span style=\"color: #ffa07a;\">\"高校の先生\"</span>
    <span style=\"color: #ffa07a;\">\"小学校の先生\"</span> <span style=\"color: #ffa07a;\">\"中学校の先生\"</span> <span style=\"color: #ffa07a;\">\"気象予報士\"</span> <span style=\"color: #ffa07a;\">\"キャビンアテンダント\"</span>
    <span style=\"color: #ffa07a;\">\"救急救命士\"</span> <span style=\"color: #ffa07a;\">\"銀行員\"</span> <span style=\"color: #ffa07a;\">\"警察官\"</span> <span style=\"color: #ffa07a;\">\"裁判官\"</span> <span style=\"color: #ffa07a;\">\"作詞家\"</span> <span style=\"color: #ffa07a;\">\"サッカー監督\"</span>
    <span style=\"color: #ffa07a;\">\"サッカー選手\"</span> <span style=\"color: #ffa07a;\">\"作曲家\"</span> <span style=\"color: #ffa07a;\">\"シェフ\"</span> <span style=\"color: #ffa07a;\">\"指揮者\"</span> <span style=\"color: #ffa07a;\">\"社長\"</span> <span style=\"color: #ffa07a;\">\"小説家\"</span> <span style=\"color: #ffa07a;\">\"消防士\"</span>
    <span style=\"color: #ffa07a;\">\"新聞記者\"</span> <span style=\"color: #ffa07a;\">\"動物のお医者さん\"</span> <span style=\"color: #ffa07a;\">\"政治家\"</span> <span style=\"color: #ffa07a;\">\"声優\"</span> <span style=\"color: #ffa07a;\">\"船長\"</span> <span style=\"color: #ffa07a;\">\"大工\"</span> <span style=\"color: #ffa07a;\">\"図書館司書\"</span>
    <span style=\"color: #ffa07a;\">\"俳優\"</span> <span style=\"color: #ffa07a;\">\"花火師\"</span> <span style=\"color: #ffa07a;\">\"花屋\"</span> <span style=\"color: #ffa07a;\">\"パイロット\"</span> <span style=\"color: #ffa07a;\">\"パン屋さん\"</span> <span style=\"color: #ffa07a;\">\"美容師\"</span>
    <span style=\"color: #ffa07a;\">\"ピアノニスト\"</span> <span style=\"color: #ffa07a;\">\"プロ野球選手\"</span> <span style=\"color: #ffa07a;\">\"弁護士\"</span> <span style=\"color: #ffa07a;\">\"幼稚園の先生\"</span>)
  <span style=\"color: #ffa07a;\">\"これらの単語に関連する単語が欲しいのです。\"</span>)

(<span style=\"color: #00ffff;\">defparameter</span> <span style=\"color: #eedd82;\">*yahoo-appid*</span>
  <span style=\"color: #ffa07a;\">\"xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\"</span>
  <span style=\"color: #ffa07a;\">\"Yahoo Web API の アプリケーションID\"</span>)
(<span style=\"color: #00ffff;\">defparameter</span> <span style=\"color: #eedd82;\">*yahoo-ma-url*</span> <span style=\"color: #ffa07a;\">\"http://jlp.yahooapis.jp/MAService/V1/parse\"</span>
  <span style=\"color: #ffa07a;\">\"日本語形態素解析\"</span>)
(<span style=\"color: #00ffff;\">defparameter</span> <span style=\"color: #eedd82;\">*yahoo-web-search-url*</span>
  <span style=\"color: #ffa07a;\">\"http://search.yahooapis.jp/WebSearchService/V1/webSearch\"</span>
  <span style=\"color: #ffa07a;\">\"ウェブ検索\"</span>)
(<span style=\"color: #00ffff;\">defparameter</span> <span style=\"color: #eedd82;\">*yahoo-blog-search-url*</span>
  <span style=\"color: #ffa07a;\">\"http://search.yahooapis.jp/BlogSearchService/V1/blogSearch\"</span>
  <span style=\"color: #ffa07a;\">\"ブログ検索\"</span>)

(<span style=\"color: #00ffff;\">defparameter</span> <span style=\"color: #eedd82;\">*occurrence-threshold*</span> 5
  <span style=\"color: #ffa07a;\">\"これより少ない出現頻度の単語は無視します。\"</span>)
(<span style=\"color: #00ffff;\">defparameter</span> <span style=\"color: #eedd82;\">*stop-words*</span>
  '(<span style=\"color: #ffa07a;\">\"あれ\"</span> <span style=\"color: #ffa07a;\">\"いい\"</span> <span style=\"color: #ffa07a;\">\"こんな\"</span> <span style=\"color: #ffa07a;\">\"こちら\"</span> <span style=\"color: #ffa07a;\">\"こと\"</span> <span style=\"color: #ffa07a;\">\"これ\"</span> <span style=\"color: #ffa07a;\">\"それ\"</span> <span style=\"color: #ffa07a;\">\"ため\"</span> <span style=\"color: #ffa07a;\">\"とき\"</span> <span style=\"color: #ffa07a;\">\"ない\"</span>
    <span style=\"color: #ffa07a;\">\"もの\"</span> <span style=\"color: #ffa07a;\">\"よく\"</span>
    <span style=\"color: #ffa07a;\">\"以上\"</span> <span style=\"color: #ffa07a;\">\"一覧\"</span> <span style=\"color: #ffa07a;\">\"最新\"</span>
    <span style=\"color: #ffa07a;\">\"amp\"</span> <span style=\"color: #ffa07a;\">\"at\"</span> <span style=\"color: #ffa07a;\">\"by\"</span> <span style=\"color: #ffa07a;\">\"com\"</span> <span style=\"color: #ffa07a;\">\"gt\"</span> <span style=\"color: #ffa07a;\">\"http\"</span> <span style=\"color: #ffa07a;\">\"https\"</span> <span style=\"color: #ffa07a;\">\"jp\"</span> <span style=\"color: #ffa07a;\">\"lt\"</span>)
  <span style=\"color: #ffa07a;\">\"これらの単語は無視します。\"</span>)
(<span style=\"color: #00ffff;\">defparameter</span> <span style=\"color: #eedd82;\">*stop-words-regexps*</span>
  (mapcar #'ppcre:create-scanner
          '(<span style=\"color: #ffa07a;\">\"^[0-9０-９]+$\"</span> <span style=\"color: #ffa07a;\">\"^.$\"</span>))
  <span style=\"color: #ffa07a;\">\"これらの正規表現に一致する単語ま無視します。\"</span>)

<span style=\"color: #ff7f24;\">;; </span><span style=\"color: #ff7f24;\">Drakma の設定
</span>(setf drakma:*drakma-default-external-format* <span style=\"color: #b0c4de;\">:utf-8</span>)
(pushnew '(<span style=\"color: #ffa07a;\">\"application\"</span> . <span style=\"color: #ffa07a;\">\"xml\"</span>) drakma:*text-content-types* <span style=\"color: #b0c4de;\">:test</span> #'equal)

(<span style=\"color: #00ffff;\">defun</span> <span style=\"color: #87cefa;\">stop-word-p</span> (word)
  (or (find word *stop-words* <span style=\"color: #b0c4de;\">:test</span> #'string=)
      (some (<span style=\"color: #00ffff;\">lambda</span> (x) (ppcre:scan x word)) *stop-words-regexps*)))

(<span style=\"color: #00ffff;\">defun</span> <span style=\"color: #87cefa;\">yahoo-ma-request</span> (text)
  (drakma:http-request
   *yahoo-ma-url*
   <span style=\"color: #b0c4de;\">:method</span> <span style=\"color: #b0c4de;\">:post</span>
   <span style=\"color: #b0c4de;\">:parameters</span> `((<span style=\"color: #ffa07a;\">\"appid\"</span> . ,*yahoo-appid*)
                 (<span style=\"color: #ffa07a;\">\"filter\"</span> . <span style=\"color: #ffa07a;\">\"1|9\"</span>) <span style=\"color: #ff7f24;\">; </span><span style=\"color: #ff7f24;\">形容詞 名詞
</span>                 (<span style=\"color: #ffa07a;\">\"sentence\"</span> . ,text))))

(<span style=\"color: #00ffff;\">defun</span> <span style=\"color: #87cefa;\">text-to-words</span> (text)
  (<span style=\"color: #00ffff;\">destructuring-bind</span> (result-set
                       schema-location
                       (ma-result
                        _
                        total-count
                        filtered-count
                        word-list))
      (cxml:parse (yahoo-ma-request text) (cxml-xmls:make-xmls-builder))
    (<span style=\"color: #00ffff;\">declare</span> (ignorable result-set schema-location ma-result _
                        total-count filtered-count))
    (<span style=\"color: #00ffff;\">loop</span> for (_a _b (_c _d word)) in (cddr word-list)
         collect word)))

(<span style=\"color: #00ffff;\">defun</span> <span style=\"color: #87cefa;\">yahoo-web-search-request</span> (query)
  (drakma:http-request
   *yahoo-web-search-url*
   <span style=\"color: #b0c4de;\">:method</span> <span style=\"color: #b0c4de;\">:get</span>
   <span style=\"color: #b0c4de;\">:parameters</span> `((<span style=\"color: #ffa07a;\">\"appid\"</span> . ,*yahoo-appid*)
                 (<span style=\"color: #ffa07a;\">\"query\"</span> . ,query)
                 (<span style=\"color: #ffa07a;\">\"results\"</span> . <span style=\"color: #ffa07a;\">\"50\"</span>)
                 (<span style=\"color: #ffa07a;\">\"format\"</span> . <span style=\"color: #ffa07a;\">\"html\"</span>))))

(<span style=\"color: #00ffff;\">defun</span> <span style=\"color: #87cefa;\">web-search</span> (query)
  (<span style=\"color: #00ffff;\">destructuring-bind</span> (result-set
                       pgr . results)
      (cxml:parse (remove #\\lf (yahoo-web-search-request query))
                  (cxml-xmls:make-xmls-builder))
    (<span style=\"color: #00ffff;\">declare</span> (ignorable result-set pgr))
    (<span style=\"color: #00ffff;\">loop</span> for (result _a (_title _b title) (_summary _c summary)) in results
         collect (list title summary))))

(<span style=\"color: #00ffff;\">defun</span> <span style=\"color: #87cefa;\">yahoo-blog-search-request</span> (query)
  (drakma:http-request
   *yahoo-blog-search-url*
   <span style=\"color: #b0c4de;\">:method</span> <span style=\"color: #b0c4de;\">:get</span>
   <span style=\"color: #b0c4de;\">:parameters</span> `((<span style=\"color: #ffa07a;\">\"appid\"</span> . ,*yahoo-appid*)
                 (<span style=\"color: #ffa07a;\">\"query\"</span> . ,query)
                 (<span style=\"color: #ffa07a;\">\"results\"</span> . <span style=\"color: #ffa07a;\">\"50\"</span>))))

(<span style=\"color: #00ffff;\">defun</span> <span style=\"color: #87cefa;\">blog-search</span> (query)
  (<span style=\"color: #00ffff;\">destructuring-bind</span> (result-set first-result-position . results)
      (cxml:parse (remove #\\lf (yahoo-blog-search-request query))
                  (cxml-xmls:make-xmls-builder))
    (<span style=\"color: #00ffff;\">declare</span> (ignorable result-set first-result-position))
    (<span style=\"color: #00ffff;\">loop</span> for (result _a id rss-url (_title _b title)
                      (_description _c description)) in results
         collect (list title description))))

(<span style=\"color: #00ffff;\">defun</span> <span style=\"color: #87cefa;\">word-to-word-list</span> (word)
  (remove-if #'stop-word-p
             (<span style=\"color: #00ffff;\">loop</span> for i in '(web-search blog-search)
                append (text-to-words
                        (format nil <span style=\"color: #ffa07a;\">\"~{~{~a ~a ~}~}\"</span> (funcall i word))))))

(<span style=\"color: #00ffff;\">defun</span> <span style=\"color: #87cefa;\">word-count-alist</span> (word)
  (<span style=\"color: #00ffff;\">let</span> (alist)
    (<span style=\"color: #00ffff;\">loop</span> for i in (word-to-word-list word)
       if (assoc i alist <span style=\"color: #b0c4de;\">:test</span> #'string=)
       do (incf (cdr (assoc i alist <span style=\"color: #b0c4de;\">:test</span> #'string=)))
       else
       do (setf alist (acons i 1 alist)))
    (setf alist (sort alist #'(<span style=\"color: #00ffff;\">lambda</span> (x y)
                                (&gt;= (cdr x) (cdr y)))))
    (remove-if (<span style=\"color: #00ffff;\">lambda</span> (x) (&lt; (cdr x) *occurrence-threshold*)) alist)))

(<span style=\"color: #00ffff;\">defun</span> <span style=\"color: #87cefa;\">normalize</span> (alist)
  <span style=\"color: #ffa07a;\">\"重みづけを、その平方和が 1 とらるように正規化する。\"</span>
  (<span style=\"color: #00ffff;\">loop</span> with factor = (sqrt (<span style=\"color: #00ffff;\">loop</span> for i in alist sum (expt (cdr i) 2)))
       for (word . magnitude) in alist
       collect (cons word (/ magnitude factor))))

(<span style=\"color: #00ffff;\">defun</span> <span style=\"color: #87cefa;\">all-word-alist</span> ()
  (<span style=\"color: #00ffff;\">loop</span> for word in *words*
     collect (print (cons word (normalize (word-count-alist word))))))
</pre>

<p>出力は次のとおりです。</p>

<pre class=\"src\">
(<span style=\"color: #ffa07a;\">\"宇宙飛行士\"</span> (<span style=\"color: #ffa07a;\">\"宇宙\"</span> . 0.7740145) (<span style=\"color: #ffa07a;\">\"飛行士\"</span> . 0.5890963) (<span style=\"color: #ffa07a;\">\"山崎\"</span> . 0.09774244)
 (<span style=\"color: #ffa07a;\">\"若田\"</span> . 0.06604219) (<span style=\"color: #ffa07a;\">\"野口\"</span> . 0.05547544) (<span style=\"color: #ffa07a;\">\"地球\"</span> . 0.05547544)
 (<span style=\"color: #ffa07a;\">\"訓練\"</span> . 0.050192066) (<span style=\"color: #ffa07a;\">\"ステーション\"</span> . 0.047550377) (<span style=\"color: #ffa07a;\">\"毎日新聞\"</span> . 0.044908687)
 (<span style=\"color: #ffa07a;\">\"日本人\"</span> . 0.042267002) (<span style=\"color: #ffa07a;\">\"国際\"</span> . 0.042267002) (<span style=\"color: #ffa07a;\">\"日本\"</span> . 0.039625313)
 (<span style=\"color: #ffa07a;\">\"直子\"</span> . 0.039625313) (<span style=\"color: #ffa07a;\">\"スペースシャトル\"</span> . 0.03434194) (<span style=\"color: #ffa07a;\">\"ニュース\"</span> . 0.03434194)
 (<span style=\"color: #ffa07a;\">\"シャトル\"</span> . 0.03170025) (<span style=\"color: #ffa07a;\">\"帰還\"</span> . 0.03170025) (<span style=\"color: #ffa07a;\">\"家族\"</span> . 0.03170025)
 (<span style=\"color: #ffa07a;\">\"写真\"</span> . 0.029058563) (<span style=\"color: #ffa07a;\">\"ISS\"</span> . 0.029058563) (<span style=\"color: #ffa07a;\">\"情報\"</span> . 0.026416875)
 (<span style=\"color: #ffa07a;\">\"光一\"</span> . 0.026416875) (<span style=\"color: #ffa07a;\">\"聡一\"</span> . 0.026416875) (<span style=\"color: #ffa07a;\">\"JAXA\"</span> . 0.023775188)
 (<span style=\"color: #ffa07a;\">\"活動\"</span> . 0.023775188) (<span style=\"color: #ffa07a;\">\"飛行\"</span> . 0.023775188) (<span style=\"color: #ffa07a;\">\"紹介\"</span> . 0.023775188)
 (<span style=\"color: #ffa07a;\">\"産経新聞\"</span> . 0.023775188) (<span style=\"color: #ffa07a;\">\"映像\"</span> . 0.021133501) (<span style=\"color: #ffa07a;\">\"ミッション\"</span> . 0.021133501)
 (<span style=\"color: #ffa07a;\">\"NASA\"</span> . 0.021133501) (<span style=\"color: #ffa07a;\">\"交信\"</span> . 0.021133501) (<span style=\"color: #ffa07a;\">\"職業\"</span> . 0.018491814)
 (<span style=\"color: #ffa07a;\">\"毛利\"</span> . 0.018491814) (<span style=\"color: #ffa07a;\">\"滞在\"</span> . 0.018491814) (<span style=\"color: #ffa07a;\">\"撮影\"</span> . 0.018491814)
 (<span style=\"color: #ffa07a;\">\"研究\"</span> . 0.018491814) (<span style=\"color: #ffa07a;\">\"女性\"</span> . 0.018491814) (<span style=\"color: #ffa07a;\">\"サイト\"</span> . 0.018491814)
 (<span style=\"color: #ffa07a;\">\"搭乗\"</span> . 0.015850125) (<span style=\"color: #ffa07a;\">\"ページ\"</span> . 0.015850125) (<span style=\"color: #ffa07a;\">\"選抜\"</span> . 0.015850125)
 (<span style=\"color: #ffa07a;\">\"イベント\"</span> . 0.015850125) (<span style=\"color: #ffa07a;\">\"実現\"</span> . 0.015850125) (<span style=\"color: #ffa07a;\">\"アポロ\"</span> . 0.015850125)
 (<span style=\"color: #ffa07a;\">\"きぼう\"</span> . 0.013208438) (<span style=\"color: #ffa07a;\">\"航空\"</span> . 0.013208438) (<span style=\"color: #ffa07a;\">\"開発\"</span> . 0.013208438)
 (<span style=\"color: #ffa07a;\">\"機構\"</span> . 0.013208438) (<span style=\"color: #ffa07a;\">\"参加\"</span> . 0.013208438) (<span style=\"color: #ffa07a;\">\"さいたま市\"</span> . 0.013208438)
 (<span style=\"color: #ffa07a;\">\"試験\"</span> . 0.013208438) (<span style=\"color: #ffa07a;\">\"仕事\"</span> . 0.013208438) (<span style=\"color: #ffa07a;\">\"最後\"</span> . 0.013208438)
 (<span style=\"color: #ffa07a;\">\"月面\"</span> . 0.013208438) (<span style=\"color: #ffa07a;\">\"着陸\"</span> . 0.013208438) (<span style=\"color: #ffa07a;\">\"特集\"</span> . 0.013208438)
 (<span style=\"color: #ffa07a;\">\"時事通信\"</span> . 0.013208438) (<span style=\"color: #ffa07a;\">\"契約\"</span> . 0.013208438) (<span style=\"color: #ffa07a;\">\"サム\"</span> . 0.013208438))
</pre>

<p>さて、この出力を利用することができるかどうかがまた問題です。</p>
"
 :AUTHOR "tahara" :DATE 3481090705 :CATEGORY "集合知")
(:PATH "/3481147128" :TITLE "Objective-Cでメンバ変数に動的にアクセスする方法" :BODY
 "<p>こんにちは。masudaです。</p>

<p>今回、複数回使い回したいViewがあったのですが、一方で様々なところで使われるものではありませんでした。<br /> 
こんなときにわざわざクラスを作るのはどうも重い感じがしてしまいます。
<br /> 
そこでUIViewのサブクラスを作らずに、メソッドで作ることにしました。</p> 
<ul> 
				<li>UIViewController
				<ul> 
				<li>今回作成したいView</li> 
				<li>今回作成したいView</li> 
				</ul> 
</ul> 
<p>というように複数個必要です。<br /> 
このViewの中身はUILabelが2つだけ。</p> 
<p>さらに出来ることなら、作成するViewの中身であるUILabelを、このViewを持っているViewControllerのメンバ変数からアクセスしたい。<br /> 
以前はTagを割り当ててアクセスしていたのですが、以外と面倒だったのでそれ以外の方法がないかどうか調べてみました。</p> 
<p>実際には以下のようなコードを使用することで出来ました。</p> 
<pre>#include &lt;objc/runtime.h&gt;
 
@implementation HogeViewController
 
- (UIView *)generateView:(NSString *)titleLabelName contentLabelName:(NSString *)contentLabelName
{
    UIView   *resultView;
    UILabel  *titleLabel, *contentLabel;
 
    // 便宜上CGRectZeroを使います。
    resultView = [[[UIView alloc] initWithFrame:CGRectZero] autorelease];
 
    titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    [resultView addSubview:titleLabel];
    [titleLabel release];
 
    object_setInstanceVariable(self, [titleLabelName UTF8String], titleLabel);
 
    contentLabel = [[UILabel alloc] initWithFrame:CGRectZero];
    [resultView addSubview:contentLabel];
    [contentLabel release];
 
    object_setInstanceVariable(self, [contentLabelName UTF8String], contentLabel);
 
    return resultView;
}
 
@end</pre> 
				<p>titleLabelName, contentLabelNameにはそれぞれに割り当てたいメンバ変数の名称を指定します。<br /> 
こんな感じにobject_setInstanceVariable関数を使用してあげれば、割り当てたいメンバ変数に割り当てることが出来ます。</p> 
<p>P.S.<br /> 
といいつつも、実は様々なところで使われる必要がわかり、まじめにUIViewのサブクラスを作成したため、上記のコードはお蔵入りになりました。</p> 
<h2>参考文献</h2> 
<ul> 
	<li><a target=\"_blank\" href=\"http://journal.mycom.co.jp/column/objc/031/index.html\">【コラム】ダイナミックObjective-C (31) ランタイムAPIでさらに動的に(5) – インスタンス変数に動的にアクセス | エンタープライズ | マイコミジャーナル</a></li> 
</ul>"
 :AUTHOR "masuda" :DATE 3481147128 :CATEGORY "objective-c")
(:PATH "/3481435886" :TITLE "空白一つにこだわりたい" :BODY "こんにちは、chibaです。
<br>
ネタがないので今回もEmacs lispの小ネタです。
<br>
文字列やS式をだらだら編集し、最後に空白一つ区切りで整形しようとしたときなのですが、間に改行が挟まっていると、just-one-spaceがきかないので、kill-lineしたりして調整することになります。
<pre>
\"foo
   bar
      baz\"
=>
\"foo bar baz\"
</pre>
自分はこれが非常にもどかしかったので、just-one-spaceを拡張したものを作成してみました。
<br>
といっても、just-one-spaceのソースが空白とタブしか飛していなかったので改行も加えただけです。
<pre>
(defun just-one-space-to-next-sexp (&optional n)
  (interactive \"*p\")
  (let ((orig-pos (point)))
    (skip-chars-backward \" \\t\\n\")
    (constrain-to-field nil orig-pos)
    (dotimes (i (or n 1))
      (if (or (= (following-char) ?\\s))
	  (forward-char 1)
	(insert ?\\s)))
    (delete-region
     (point)
     (progn
       (skip-chars-forward \" \\t\\n\")
       (constrain-to-field nil orig-pos t)))))
</pre>
<pre>
;; キーバインド例
(define-key  global-map [(meta shift ?\\s)] 'just-one-space-to-next-sexp)
</pre>
これで、すぱっと隣りに揃えられるので気持良いです。
<br>
リージョンやリストの中身を処理してくれる関数もあったら便利かもしれません。
<br>
■"
 :AUTHOR "chiba" :DATE 3481435886 :CATEGORY "Emacs")
(:PATH "/3482117931" :TITLE "letの束縛部分を便利に編集したい" :BODY "こんにちはchibaです。
ネタ切れなのでいきなりLISPネタなのですが、letでつつまれた式を編集している際に、後で束縛したい変数を追加したくなることって良くありますよね。
<pre>
(let ((str \"foo bar baz\"))
  ....

  (setq len (length str)))
</pre>
という風に書いていて、後でlenが欲しくなるような
<br>
つまり
<pre>
(let ((str \"foo bar baz\")
      (len 0))
  ....

  (setq len (length str)))
</pre>
こういう風に前に戻って(len 0)を追加したいわけですね。
<br>
思い立ったが吉日なのでそういうelispを書いてみることにしました。
<pre>
(progn
  (defun edit-let-bind ()
    (interactive)
    (let ((foundp nil))
      (save-excursion
        (catch 'loop
          (while (not (c-at-toplevel-p))
            (backward-up-list)
            (down-list)
            (let ((thing (thing-at-point 'symbol)))
              (cond ((or (string= \"let\" thing)
                         (string= \"do\" thing))
                   (down-list)
                   (setq foundp t)
                   (throw 'loop nil))
                  ('T (backward-up-list))))))
        (when foundp
          (recursive-edit)))))
  ;; keybind
  (define-key global-map [(control meta shift ?c)] 'edit-let-bind))
</pre>
非常に適当な作りですが、letや、doの束縛部を編集するために、再帰編集モードに入り、束縛部分にカーソルを飛し、編集が終わったら、再帰編集モードから抜ける、という風にしてみました。
<br>
再帰編集モードから抜けるのが、C-M-cだったので、C-M-sh-cで、束縛部の編集へ。
<br>
一応それなりに便利に使えますが、どなたかもっとちゃんとした、elispの流儀に則ったものを作成して頂けると嬉しいです!
■"
 :AUTHOR "chiba" :DATE 3482117931 :CATEGORY "Emacs")
(:PATH "/3482790616" :TITLE "Apache で特定の User-Agent だけ BASIC 認証をバイパスする方法" :BODY
 "<p class=\"first\">こんにちは!! tahara です。
iPhone アプリからのアクセス以外はベーシック認証でブロックしたい、というときのお話です。
この設定で User-Agent に CFNetwork が含まれていない場合だけベーシック認証が必要になります。</p>

<pre class=\"src\">
&lt;<span style=\"color: #87cefa;\">Location</span> /&gt;
  <span style=\"color: #00ffff;\">Satisfy</span> <span style=\"color: #98fb98;\">Any</span>
  <span style=\"color: #00ffff;\">BrowserMatchNoCase</span> CFNetwork is_iPhone=1
  <span style=\"color: #00ffff;\">Order</span> <span style=\"color: #98fb98;\">Deny</span>,<span style=\"color: #98fb98;\">Allow</span>
  <span style=\"color: #00ffff;\">Deny</span> <span style=\"color: #98fb98;\">from</span> <span style=\"color: #98fb98;\">all</span>
  <span style=\"color: #00ffff;\">Allow from</span> <span style=\"color: #98fb98;\">env</span>=is_iPhone

  <span style=\"color: #00ffff;\">AuthUserFile</span> /var/www/htpasswd
  <span style=\"color: #00ffff;\">AuthGroupFile</span> /dev/null
  <span style=\"color: #00ffff;\">AuthName</span> <span style=\"color: #ffa07a;\">\"Please enter username and password\"</span>
  <span style=\"color: #00ffff;\">AuthType</span> <span style=\"color: #98fb98;\">Basic</span>
  <span style=\"color: #00ffff;\">require</span> <span style=\"color: #98fb98;\">valid-user</span>
&lt;/<span style=\"color: #87cefa;\">Location</span>&gt;
</pre>

<p>これでステージング環境が Google に補足されることもなくなるはずです。</p>
"
 :AUTHOR "tahara" :DATE 3482790616 :CATEGORY "Apache")
(:PATH "/3482813168" :TITLE "確認恐怖症をEmacsが救う" :BODY "こんにちは、chibaです。
<br>
ネタがないので今回もEmacsの小ネタです。
<br>
Emacsには、LISPが搭載されているので、ちょっとしたLISPを書くことでも色々便利に使えます。
<br>
代表的なところとしては、ちょっとした計算でしょうか
<pre>
(+ 1500
  200
 3000
 4500
)
;⇒ 9200
</pre>
S式の前置記法がこういう場合には便利です。
<br>
最近、SSLの申請で、更新するCSRを確認することがあったのですが、こういう確認の為の文字列比較にも使えることに気付きました。
<pre>
(equal
\"-----BEGIN CERTIFICATE REQUEST-----
MIICijCCAXICAQAwRTELMAkGA1UEBhMCSlAxEzARBgNVBAgTClNvbWUtU3RhdGUx
ITAfBgNVBAoTGEludGVybmV0IFdpZGdpdHMgUHR5IEx0ZDCCASIwDQYJKoZIhvcN
AQEBBQADggEPADCCAQoCggEBAM7k/tno3FquqOOrhkFxCiAVx/0qPjjcOhcD0PXx
ZCgSd6vHK0oSjDrWl+KFRMISd+EECBIrWR0I/u3RywKmlj1Q29wgt+UzFFJSK5+k
wsiQTnxs//uAqWoLBUUU3Y0/67P+cJSqflAcGgt8imhXEh2GzfPPKfB9nK3P4MZ7
WcrKvTwUEewASdaBWU+8+4ic8JzIwiCLge6tQvf/xeqkBhp7Othsf9vmwGARjDaI
DPSswlaKqkaXEog9fhhJmO2QUzEQ9R92MNmxu+wXHKxx3LuC4dvnoNNFz1l+cPq9
3wVoLBIaEBw8U06+BEPtlAf8ZRGYVG7LpxvhyS0EdDirN0MCAwEAAaAAMA0GCSqG
SIb3DQEBBQUAA4IBAQAF/Stfy58MQFRCmXZxaiKK1Ez9CBdyBtbCM+xquYzfRTMg
EEmGRXoZ1FomV2B2avkUU0frOnb3cktfuttBs1olwKvf3lzktdRoQBPrzDy7iAej
p4MwQHEmFgVXe3ZstjoYIQ2PudSPUlCQRUAi9oiNjVt0iAY7w1xnlCMqYTzGBW4y
8MpnVDKtTmmMPM0wxtiKDkOmT3S8L/mR1wNDnpavv5hOIn8z7No+qHzkLcuHEHYF
IVn9suw6L2GvPgxdw4XarWoFjeuADhszwwVpI87oGMH3H5Z6kniW22bQX1l402dO
YqSaxgasSPwJi+3njg0upYERIV7i9fR74/tufNv7
-----END CERTIFICATE REQUEST-----\"

\"-----BEGIN CERTIFICATE REQUEST-----
MIICijCCAXICAQAwRTELMAkGA1UEBhMCSlAxEzARBgNVBAgTClNvbWUtU3RhdGUx
ITAfBgNVBAoTGEludGVybmV0IFdpZGdpdHMgUHR5IEx0ZDCCASIwDQYJKoZIhvcN
AQEBBQADggEPADCCAQoCggEBAM7k/tno3FquqOOrhkFxCiAVx/0qPjjcOhcD0PXx
ZCgSd6vHK0oSjDrWl+KFRMISd+EECBIrWR0I/u3RywKmlj1Q29wgt+UzFFJSK5+k
wsiQTnxs//uAqWoLBUUU3Y0/67P+cJSqflAcGgt8imhXEh2GzfPPKfB9nK3P4MZ7
WcrKvTwUEewASdaBWU+8+4ic8JzIwiCLge6tQvf/xeqkBhp7Othsf9vmwGARjDaI
DPSswlaKqkaXEog9fhhJmO2QUzEQ9R92MNmxu+wXHKxx3LuC4dvnoNNFz1l+cPq9
3wVoLBIaEBw8U06+BEPtlAf8ZRGYVG7LpxvhyS0EdDirN0MCAwEAAaAAMA0GCSqG
SIb3DQEBBQUAA4IBAQAF/Stfy58MQFRCmXZxaiKK1Ez9CBdyBtbCM+xquYzfRTMg
EEmGRXoZ1FomV2B2avkUU0frOnb3cktfuttBs1olwKvf3lzktdRoQBPrzDy7iAej
p4MwQHEmFgVXe3ZstjoYIQ2PudSPUlCQRUAi9oiNjVt0iAY7w1xnlCMqYTzGBW4y
8MpnVDKtTmmMPM0wxtiKDkOmT3S8L/mR1wNDnpavv5hOIn8z7No+qHzkLcuHEHYF
IVn9suw6L2GvPgxdw4XarWoFjeuADhszwwVpI87oGMH3H5Z6kniW22bQX1l402dO
YqSaxgasSPwJi+3njg0upYERIV7i9fR74/tufNv7
-----END CERTIFICATE REQUEST----\"
)
;⇒ nil
</pre>
Emacs便利です。
<br>
■"
 :AUTHOR "chiba" :DATE 3482813168 :CATEGORY "Emacs")
(:PATH "/3483310778" :TITLE "EmacsでGoogle Chart" :BODY "こんにちは、chibaです。
<br>
今回もネタがないのでEmacsで遊んでいたネタを。
<br>
Googleは、便利にグラフを書けるAPIである<a href=\"http://code.google.com/intl/ja/apis/charttools/index.html\">Google Chart API</a>というのを提供しています。
<br>
URLを指定するだけで、グラフが書けたり、QRコードが書けたり色々便利なものですが、数値のリストからスタックされた棒グラフを書いてみようと思ったので、ちょっと遊んでみました。
<pre>
(defun* gchart-stack-bar-chart-url (data &key (style :horizontal))
  (let ((len (length data)))
    (concat
     \"http://chart.apis.google.com/chart?\"
     \"cht=b\" (case style
               (:horizontal \"hs\")
               (otherwise \"vs\")) 
     \"&chd=t:\"
     (let* ((totals (mapcar (lambda (x)
                              (apply #'+ x))
                            data))
            (max (apply #'max totals))
            (to-string (lambda (x) (format \"%s\" x))))
       (mapconcat 
        to-string
        (mapcar 
         (lambda (x)
           (mapconcat
            to-string x \",\"))
         (apply #'mapcar*
                #'list
                (mapcar
                 (lambda (x) 
                   (mapcar
                    (lambda (y)
                      (format \"%.1f\"
                              (* (/ 100 max) y)))
                    x))
                 data)))
        \"|\"))
     \"&chco=ff0000,00ff00,0000ff\"
     \"&chs=350x\"
     (int-to-string (* len 28)))))
</pre>
<pre>
(let ((data '((10 20 30)
              (3 50 1)
              (1 2 3)
              (33 33 33)
              (5 6 7)
              (33 33 33)
              (3 3 9))))
  (browse-url (gchart-stack-bar-chart-url data)))
</pre>
これで、
<br>
<img src=\"http://chart.apis.google.com/chart?cht=bhs&chd=t:10.0,3.0,1.0,33.0,5.0,33.0,3.0|20.0,50.0,2.0,33.0,6.0,33.0,3.0|30.0,1.0,3.0,33.0,7.0,33.0,9.0&chco=ff0000,00ff00,0000ff&chs=350x196\">
<br>
のようなグラフが書けます。
<br>
タイトルも付けられるようですが、飽きてしまいました
<br>
Emacs便利です。<br>
■
"
 :AUTHOR "chiba" :DATE 3483310778 :CATEGORY "Emacs")
(:PATH "/3483760148" :TITLE "隙があればlispを詰め込んで行きたい" :BODY "こんにちは、chibaです。
<br>
今回もネタがないのでEmacsネタです。
日常のちょっとしたテキストの編集作業なのですが、
<pre>
app/views/top/foo.html.erb
app/views/shared/_foo.html.erb
app/views/shared/foo.html.erb
app/views/top/_foo.html.erb
app/views/shared/foo.html.erb
app/views/layouts/application.html.erb
config/links/foo.html.erb
public/images/shared/foo.jpg
</pre>
のようなテキストをスペース区切りの一行にまとめる必要に迫られました。
<br>
ここはEmacsで、改行をスペースに置換してやれば良いんじゃないかと思いますが、いや、ここは踏ん張ってlispを書いてゆきたいと思い、
<pre>
(mapconcat (lambda (x) (format \"%s\" x))
'(
app/views/top/foo.html.erb
app/views/shared/_foo.html.erb
app/views/shared/foo.html.erb
app/views/top/_foo.html.erb
app/views/shared/foo.html.erb
app/views/layouts/application.html.erb
config/links/foo.html.erb
public/images/shared/foo.jpg
)
\" \") 
</pre>
のようなものを書いて、式のにカーソルを持っていって、C-u C-x C-eです。
<br>
そうすると、式の後ろに
<pre>
=> \"app/views/top/foo.html.erb app/views/shared/_foo.html.erb app/views/shared/foo.html.erb app/views/top/_foo.html.erb app/views/shared/foo.html.erb app/views/layouts/application.html.erb config/links/foo.html.erb public/images/shared/foo.jpg\"
</pre>
のようなものが挿入されます。lambdaって書けて良かったですよね。
<br>
次に、
<pre>
A    app/views/top/foo.html.erb
M    app/views/shared/_foo.html.erb
M    app/views/shared/foo.html.erb
M    app/views/top/_foo.html.erb
?    app/views/shared/foo.html.erb
M    app/views/layouts/application.html.erb
A    config/links/foo.html.erb
M    public/images/shared/foo.jpg
</pre>
のようなテキストでファイル名の部分だけ、一行にスペース区切りでつなげる必要に迫られました。
<br>
ここは、Emacsで、kill-rectangleでしょうか。いや、ここは踏ん張ってlispを書いてゆきたいと思い、
<pre>
(apply #'concat
(loop for (x y) on 
'(
A    app/views/top/foo.html.erb
M    app/views/shared/_foo.html.erb
M    app/views/shared/foo.html.erb
M    app/views/top/_foo.html.erb
?    app/views/shared/foo.html.erb
M    app/views/layouts/application.html.erb
A    config/links/foo.html.erb
M    public/images/shared/foo.jpg
)
by #'cddr
collect (format \"%s \" y))
)
</pre>
のようなものを書き、上と同じく、eval-last-sexp すると
<pre>
\"app/views/top/foo.html.erb app/views/shared/_foo.html.erb app/views/shared/foo.html.erb app/views/top/_foo.html.erb app/views/shared/foo.html.erb app/views/layouts/application.html.erb config/links/foo.html.erb public/images/shared/foo.jpg \"
</pre>
という文字列が得られます。
<br>
なるほど、これは、shell-command-on-regionで、awk '{if($1==\"M\"){printf(\"%s \", $2);}}'とかしている場合ではないですね。
<br>
Emacs便利です。
<br>
■
"
 :AUTHOR "chiba" :DATE 3483760148 :CATEGORY "Emacs")
(:PATH "/3484452177" :TITLE "macroexpandでHTMLを書く" :BODY "こんにちは、chibaです。
<br>
今回もネタがないのでEmacsネタです。
<br>
Dylanのマクロについての文献:
<br>
http://people.csail.mit.edu/jrb/Projects/dexprs.pdf
を読んでいて、XMLや、LISPは、Skeleton Syntax Tree Representationsに分類されるというのを読んで、そうか、HTMLも簡単にマクロ書けたりするのかもと思ったのでEmacs Lispでちょっと試してみました。
<pre>
(defun split-id-or-class (string)
  (let ((elts (split-string string &quot;[\\\\.#]&quot;)))
    (if (cdr elts)
        elts
        string)))

(defmacro defhtmltag (tag)
  (let* ((tag-str (symbol-name tag))
         (tags (split-string tag-str &quot;[\\\\.#]&quot;))
         (tag-name (car tags))
         (attr (cadr tags)))
    `(defmacro ,tag (&rest body)
       `(list ,(concat
                &quot;&lt;&quot;
                ,tag-name 
                (apply #'concat 
                       (cond ((find ?. ,tag-str)
                              (list &quot; class=\\&quot;&quot; ,attr &quot;\\&quot;&quot;))
                             ((find ?# ,tag-str)
                              (list &quot; id=\\&quot;&quot; ,attr &quot;\\&quot;&quot;))
                             ('T (list &quot;&quot;))))
                &quot;&gt;&quot;)
              ,@body
              ,(concat &quot;&lt;/&quot; ,tag-name &quot;&gt;&quot;)))))

(defun flatten (lis)
  (cond ((atom lis) lis)
        ((listp (car lis))
         (append (flatten (car lis)) (flatten (cdr lis))))
        (t (append (list (car lis)) (flatten (cdr lis))))))

(defmacro with-html-output-to-string (&rest body)
  `(reduce (lambda (x y) (format &quot;%s%s&quot; x y))
           (flatten (list ,@body))))
</pre>
使い方としては、
<br>
<pre>
(defhtmltag li.foo)
</pre>
のようにすると、
<pre>
(list \"&lt;li&gt;\" \"こんにちは\" \"&lt;/li&gt;\")
</pre>
のようなものにマクロが展開されるので、リストの入れ子を平坦にして一つの文字列に繋げれば完成です。
<br>
ちょっと込み入ったところだと
<pre>
(defhtmltag table)
(defhtmltag tbody)
(defhtmltag td)
(defhtmltag tr)

(defun list-to-table (list)
  (table 
   (tbody
    (mapcar (lambda (x)
              (tr
               (mapcar (lambda (y) (td y))
                       x)))
            list))))

(insert
 (with-html-output-to-string
  (list-to-table '((foo bar baz quux)
                   (1 2 3 4)
                   (z z z z)))))
;=&gt; &lt;li class=&quot;foo&quot;&gt;&lt;li class=&quot;foo&quot;&gt;&lt;li class=&quot;foo&quot;&gt;&lt;li class=&quot;foo&quot;&gt;foo&lt;/li&gt;&lt;li class=&quot;foo&quot;&gt;bar&lt;/li&gt;&lt;li class=&quot;foo&quot;&gt;baz&lt;/li&gt;&lt;li class=&quot;foo&quot;&gt;quux&lt;/li&gt;&lt;/li&gt;&lt;li class=&quot;foo&quot;&gt;&lt;li class=&quot;foo&quot;&gt;1&lt;/li&gt;&lt;li class=&quot;foo&quot;&gt;2&lt;/li&gt;&lt;li class=&quot;foo&quot;&gt;3&lt;/li&gt;&lt;li class=&quot;foo&quot;&gt;4&lt;/li&gt;&lt;/li&gt;&lt;li class=&quot;foo&quot;&gt;&lt;li class=&quot;foo&quot;&gt;z&lt;/li&gt;&lt;li class=&quot;foo&quot;&gt;z&lt;/li&gt;&lt;li class=&quot;foo&quot;&gt;z&lt;/li&gt;&lt;li class=&quot;foo&quot;&gt;z&lt;/li&gt;&lt;/li&gt;&lt;/li&gt;&lt;/li&gt;
</pre>
ということもできます。
<br>
ちなみに、マクロ展開でHTML書くって新しいかも!と思いましたが、別にマクロにしなくても関数でも書けることに今気付きました…
<br>
とりあえず、もし、HTMLにマクロがあったとしたらLISPと似た感じになるのかなあという印象は持ちました。
<br>
■
"
 :AUTHOR "chiba" :DATE 3484452177 :CATEGORY "Emacs")
(:PATH "/3484714545" :TITLE "Lisp on Rails 第9回 〜 ビュー" :BODY
 "<p class=\"first\">こんにちは!! tahara です。
Objective-C づけになり、すっかりこぶさたしておりましたが Lisp on Rails 第9回です!</p>

<p>今回はビューです。
Common Lisp で ERB 相当を実装します。
Common Lisp で実装するからにはリードテーブルを使い、
HTML ファイルを関数にコンパイルしたいと思います。</p>

<p>HTML ファイルを関数にコンパイルソースは
<a href=\"http://github.com/quek/lisp-on-rails/blob/master/action-pack/ecl.lisp\">http://github.com/quek/lisp-on-rails/blob/master/action-pack/ecl.lisp</a> です。</p>

<p>ところどころ説明させていただきます。
html-defun-readtable ではビューファイルの最初の1文字をマクロキャラクタにして、
先頭に (in-package :xxxx) を追加し、全体を (defun xxxx () ...) でくるむようにしています。
動的にリーダをカスタマイズしているのです。
これでビューファイルを1つの関数として読み込むことができるようになります。</p>

<pre class=\"src\">
(<span style=\"color: #00ffff;\">defun</span> <span style=\"color: #87cefa;\">html-defun-readtable</span> (fname pathspec)
  (<span style=\"color: #00ffff;\">let</span> ((*readtable* (basic-readtable)))
    (set-macro-character
     (first-char pathspec)
     (<span style=\"color: #00ffff;\">let</span> ((<span style=\"color: #00ffff;\">in-package</span> t))
       (<span style=\"color: #00ffff;\">lambda</span> (stream char)
         (unread-char char stream)
         (print
          (<span style=\"color: #00ffff;\">if</span> in-package
              (<span style=\"color: #00ffff;\">progn</span>
                (setf in-package nil)
                `(<span style=\"color: #00ffff;\">in-package</span> ,(package-name action-controller:*app-package*)))
              `(<span style=\"color: #00ffff;\">defun</span> ,fname ()
                 ,(body-code stream char)))))))
    *readtable*))
</pre>

<p>Rails ではコントローラからビューへの値の受け渡しは @foo のようなインスタンス変数が使われます。
それに対応するためビューファイルの中に @ で始まるシンボルがあれば、
コントローラのスロット値へのアクセスに変換するシンボルマクロを定義します。</p>

<pre class=\"src\">
(<span style=\"color: #00ffff;\">defun</span> <span style=\"color: #87cefa;\">body-code</span> (stream char)
  (walk-body-code (read-body-code stream char)))

(<span style=\"color: #00ffff;\">defun</span> <span style=\"color: #87cefa;\">read-body-code</span> (stream char)
  (<span style=\"color: #00ffff;\">let</span> ((*readtable* (make-html-readtable char)))
    (<span style=\"color: #00ffff;\">loop</span> for x = (read stream nil stream t)
          until (eq x stream)
          collect x)))

(<span style=\"color: #00ffff;\">defun</span> <span style=\"color: #87cefa;\">walk-body-code</span> (code)
  `(<span style=\"color: #00ffff;\">symbol-macrolet</span>
       ,(series:collect
            (series:mapping
             ((x (series:choose-if (q:^ q:symbol-head-p _ <span style=\"color: #ffa07a;\">\"@\"</span>)
                                   (series:scan-lists-of-lists-fringe code))))
             `(,x (slot-value action-controller:*controller*
                              ',(intern (subseq (symbol-name x) 1)
                                        action-controller:*app-package*)))))
     ,@code))
</pre>


<p>そんなこんなで、なんとかモデル、コントローラ、ビューが繋がりました。</p>

<p>モデル</p>

<pre class=\"src\">
(<span style=\"color: #00ffff;\">in-package</span> <span style=\"color: #b0c4de;\">:blog</span>)

(def-record post
  (<span style=\"color: #b0c4de;\">:has-many</span> comments))

(def-record comment
  (<span style=\"color: #b0c4de;\">:belongs-to</span> post))
</pre>

<p>コントローラ。生の defclass です。</p>

<pre class=\"src\">
(<span style=\"color: #00ffff;\">in-package</span> <span style=\"color: #b0c4de;\">:blog</span>)

(<span style=\"color: #00ffff;\">defclass</span> <span style=\"color: #98fb98;\">top-controller</span> (application-controller)
  ((message)
   (posts)))

(<span style=\"color: #00ffff;\">defmethod</span> <span style=\"color: #87cefa;\">index</span> ((self top-controller))
  (<span style=\"color: #00ffff;\">with-slots</span> (message posts) self
    (setf message <span style=\"color: #ffa07a;\">\"まみむめも♪\"</span>
          posts (all post))))
</pre>

<p>ビュー。HTML タグと loop が混在するのもまた一興ですね。</p>

<pre class=\"src\">
&lt;<span style=\"color: #00ffff;\">!doctype</span> html&gt;
&lt;<span style=\"color: #87cefa;\">html</span>&gt;
  &lt;<span style=\"color: #87cefa;\">head</span>&gt;
    &lt;<span style=\"color: #87cefa;\">meta</span> <span style=\"color: #eedd82;\">charset</span>=<span style=\"color: #ffa07a;\">\"UTF-8\"</span>&gt;
    &lt;<span style=\"color: #87cefa;\">title</span>&gt;<span style=\"font-weight: bold; text-decoration: underline;\">ブログ</span>&lt;/<span style=\"color: #87cefa;\">title</span>&gt;
  &lt;/<span style=\"color: #87cefa;\">head</span>&gt;
  &lt;<span style=\"color: #87cefa;\">body</span>&gt;
    &lt;<span style=\"color: #87cefa;\">h1</span>&gt;&lt;%= @message %&gt;&lt;/<span style=\"color: #87cefa;\">h1</span>&gt;
    &lt;<span style=\"color: #87cefa;\">h2</span>&gt;<span style=\"font-weight: bold; font-style: italic; text-decoration: underline;\">投稿を loop で表示する</span>&lt;/<span style=\"color: #87cefa;\">h2</span>&gt;
    &lt;<span style=\"color: #87cefa;\">ul</span>&gt;&lt;% (loop for post in @posts for comments = (comments-of post) do %&gt;
      &lt;<span style=\"color: #87cefa;\">li</span>&gt;&lt;%= (content-of post) %&gt; -- &lt;%= (name-of post) %&gt;&lt;/<span style=\"color: #87cefa;\">li</span>&gt;
      &lt;% if comments do %&gt;
      &lt;<span style=\"color: #87cefa;\">ul</span>&gt;&lt;% (loop for comment in comments do %&gt;
        &lt;<span style=\"color: #87cefa;\">li</span>&gt;&lt;%= (body-of comment) %&gt; -- &lt;%= (commenter-of comment) %&gt;&lt;/<span style=\"color: #87cefa;\">li</span>&gt;&lt;% ) %&gt;
      &lt;/<span style=\"color: #87cefa;\">ul</span>&gt;&lt;% ) %&gt;
    &lt;/<span style=\"color: #87cefa;\">ul</span>&gt;
  &lt;/<span style=\"color: #87cefa;\">body</span>&gt;
&lt;/<span style=\"color: #87cefa;\">html</span>&gt;
</pre>

<p>コントローラは次のように書けるようにすると、それっぽい気もしますが、いまはまだ書けません。</p>

<pre class=\"src\">
(def-controller top (application)
  (def-action index
      (setf @message <span style=\"color: #ffa07a;\">\"まみむめも♪\"</span>
            @posts (all post)))
  (def-action foo
      (setf @essage <span style=\"color: #ffa07a;\">\"foo\"</span>)))
</pre>


<p>以上、まとめますと
<strong><em>「リーダをいじれる言語は素敵ですね!」</em></strong>
でした。</p>

<p>ソースはこちらから <a href=\"http://github.com/quek/lisp-on-rails\">http://github.com/quek/lisp-on-rails</a></p>

<p>第10回につづきます。</p>
"
 :AUTHOR "tahara" :DATE 3484714545 :CATEGORY "Lisp on Rails")
(:PATH "/3485257703" :TITLE "隙があればlispを詰め込んで行きたい (2)" :BODY "こんにちは、chibaです。
<br>
今回もネタがないのでLISPネタです。
<br>
日常の作業では、テキストファイルを加工することが割とあったりすると思いますが、そういう時には、sedや、awkって便利ですよね。
<br>
ちょっとした一行野郎が大活躍、ということは結構あると思います。
<br>
自分もそういう一行野郎が好きではあるのですが、いやしかし、隙があればlispを詰め込んで行きたい。
<br>
最近もsedを使いたくなるようなHTMLの編集作業に遭遇しました。
<br>
「指定したディレクトリ以下に含まれるすべてのHTMLファイルの&lt;div class=&quot;foo&quot;から、&lt;/div&gt;の間を、用意したテキストファイルの内容と置き換える。」
<br>
という仕事です。
<br>
sedで一発だろうと思いましたが、とりあえず、Common Lispで書いてみました。
<pre>
(LOOP :FOR FILE :IN
   (DIRECTORY \"/tmp/foo/**/*.html\")
   :DO
   (WITH-OPEN-FILE (IN FILE)
     (WITH-OPEN-FILE (OUT (FORMAT NIL \"~A.new.html\" (PATHNAME FILE))
                          :DIRECTION :OUTPUT
                          :IF-EXISTS :SUPERSEDE
                          :IF-DOES-NOT-EXIST :CREATE)
       (LOOP :WITH OPEN 
          :FOR LINE := (READ-LINE IN NIL NIL) :WHILE LINE
          :DO (PROGN
                (WHEN (SEARCH \"<div class=\\\"foo\\\">\" LINE)
                  (SETQ OPEN 'T))
                (COND ((AND OPEN (SEARCH \"</div>\" LINE))
                       (SETQ OPEN NIL)
                       (WITH-OPEN-FILE (IN2 \"g000001/foo.html\")
                         (LOOP :FOR LINE := (READ-LINE IN2 NIL NIL) :WHILE LINE
                            :DO (WRITE-LINE LINE OUT))))
                      ((NOT OPEN)
                       (WRITE-LINE LINE OUT)))
                )))))
</pre>
気分は一行野郎なのでコードもいきあたりばったりで汚ないです。
<br>
これで仕事は片付いたのですが、率直な感想として、sedに比べると書くのがかなりめんどくさいです。(一切ライブラリを使ってないということもありますが…)
<br>
こんなにめんどうでは、やっぱりCommon Lispよりsedを使ってしまいます。
<br>
いやしかし、こういう道具を沢山書き溜めておいて、必要なときにさっと出せるようになれば、そのうちsedやawkではなく、自然にCommon Lispを使うようになるかもしれません。
<br>
ということで、若干無理はあるものの、コードを纒めて次の機会に備えておくことにしました。
<pre>
(DEFUN SED (START-PAT END-PAT NEW 
            &KEY (IN *STANDARD-INPUT*) (OUT *STANDARD-OUTPUT*))
  (LOOP :WITH OPEN 
        :FOR LINE := (READ-LINE IN NIL NIL) :WHILE LINE
        :DO (PROGN
              (WHEN (SEARCH START-PAT LINE)
                (SETQ OPEN 'T))
              (COND ((AND OPEN (SEARCH END-PAT LINE))
                     (SETQ OPEN NIL)
                     (WRITE-LINE NEW OUT))
                    ((NOT OPEN)
                     (WRITE-LINE LINE OUT))))))

(DEFUN MAP-FILE-INTO (FILES FUNCTION)
  (LET ((TEMPNAME-SUFFIX (GENSYM \"TEMP-FILE-\")))
    (DOLIST (FILE FILES)
      (LET ((TEMPFILE-NAME (FORMAT NIL \"~A_~A\" FILE TEMPNAME-SUFFIX)))
        (WITH-OPEN-FILE (IN FILE)
          (WITH-OPEN-FILE (OUT TEMPFILE-NAME
                           :DIRECTION :OUTPUT
                           :IF-EXISTS :SUPERSEDE
                           :IF-DOES-NOT-EXIST :CREATE)
            (FUNCALL FUNCTION IN OUT)))
        (RENAME-FILE TEMPFILE-NAME FILE)))))
</pre>
この2つを使えば、今回の仕事は、
<pre>
(MAP-FILE-INTO (DIRECTORY \"**/*.html\")
               (LAMBDA (IN OUT)
                 (SED \"&lt;div class='foo'&gt;\"
                      \"&lt;/div&gt;\"
                      (KL:READ-FILE-TO-STRING \"foo.txt\")
                      :IN IN
                      :OUT OUT)))
</pre>
のように書けます。
<br>
いまのところぱっとしませんが、そのうちCommon Lispだけでテキスト仕事は片付けられるようになることを目指します!
<br>
■
"
 :AUTHOR "chiba" :DATE 3485257703 :CATEGORY "LISP")
(:PATH "/3485836586" :TITLE
 "Google Data APIs Objective-C Client LibraryをiOS SDKで使用するための準備" :BODY
 "				<p>こんにちは。masudaです。</p> 
				<p>今回はGoogle Data APIs Objective-C Client LibraryをiOS SDKで使用するための準備について書きたいと思います。</p> 
				<p>Google Data APIs Objective-C Client LibraryはGoogleの様々なサービスをObjective-Cから使うことができるライブラリです。<br /> 
				<a target=\"_blank\" href=\"http://code.google.com/p/gdata-objectivec-client/\">Google Data APIs Objective-C Client Library</a></p> 
				<p>あらかじめGData.xcodeprojを、ライブラリを使用したいプロジェクトの「ファイルとグループ」欄に追加しておきましょう。</p> 
				<h2>ライブラリをコンパイルする</h2> 
				<p>コンパイルオプションを指定してコンパイルします。<br /> 
				今回はPicasaサービスとそれに付随してOAuthを使用したので、以下のオプションを指定しました。</p> 
				<pre>-DGDATA_INCLUDE_PHOTOS_SERVICE=1
-DGDATA_INCLUDE_OAUTH=1</pre> 
				<p>iPhone Simulator版とiPhone OS版をReleaseでコンパイルします。</p> 
				<h2>lipoでFat Binaryにする</h2> 
				<pre>cd build
lipo -create Release-iphoneos/libGDataTouchStaticLib.a Release-iphonesimulator/libGDataTouchStaticLib.a -output libGDataTouchStaticLib.a</pre> 
				<h2>コンパイルしたライブラリをXcodeに追加する</h2> 
				<ul> 
				<li>Xcodeの「ターゲット」でアプリを指定し右クリックし「情報を見る」を選択。</li> 
				<li>「一般」 &#8211; 「リンク済みライブラリ」の下の「+」をクリック。</li> 
				<li>「その他を追加&#8230;」をクリックし、さきほどコンパイルしたlibGDataTouchStaticLib.aを選択。</li> 
				</ul> 
				<h2>コンパイルするための設定を追加する</h2> 
				<ul> 
				<li>プロジェクトを右クリックし、「情報を見る」を選択。</li> 
				<li>「ビルド」を選ぶ。</li> 
				<li>「ヘッダ検索パス」に/usr/include/libxml2を追加。</li> 
				<li>「ユーザヘッダ検索パス」にライブラリのフォルダを追加（このとき「再帰的」にチェックを入れる）。</li> 
				<li>「常にユーザパスを検索」にチェックを入れる。</li> 
				<li>「他のリンカフラグ」に -all_load -ObjC -lxml2 を指定。</li> 
				</ul> 
				<h2>参考文献</h2> 
				<ul> 
				<li><a target=\"_blank\" href=\"http://code.google.com/p/gdata-objectivec-client/wiki/BuildingTheLibrary#Linking_to_the_iPhone_Static_Library\">BuildingTheLibrary &#8211; gdata-objectivec-client &#8211; Adding the Google Data API Objective-C Client Library to a Project &#8211; Project Hosting on Google Code</a></li> 
				<li><a href=\"http://d.hatena.ne.jp/unarrator/20100602\">gdata-objectivec-clientを一部手動でstatic library化 &#8211; Undecidable Narrator &#8211; 曖昧な語り手</a></li> 
				<li><a href=\"http://www.awaresoft.jp/development/35-iphone-app/62-building-gdata-api-client-library-for-iphone.html\">Google Data API クライアントライブラリのビルド &#8211; Awaresoft</a></li> 
				<li><a target=\"_blank\" href=\"http://blog.boreal-kiss.com/2009/08/29000009.html\">[iPhone] cocos2dを静的ライブラリ化して使う : boreal-kiss.com</a></li> 
				</ul> "
 :AUTHOR "masuda" :DATE 3485836586 :CATEGORY "objective-c")
(:PATH "/3486158018" :TITLE "隙があればlispを詰め込んで行きたい (3)" :BODY
 "隙があればlispを詰め込んで行きたい日々ですが、今回はウェブ上のHTMLの内容確認の仕事です。
<br>
具体的には、h1、title、meta keywords、meta descriptionが記述されたCSV形式のファイルがあり、これの内容どおりになっているかをチェックする、という内容。
<br>
とりあえず、HTMLのタグの抜き出しには、<a href=\"http://www.cliki.net/Drakma\">Drakma</a>と、<a href=\"http://www.cliki.net/closure-html\">closure-html</a>を使って、欲しいタグの内容を抜き出す関数を作成してみました。
<br>
|((:h1 ...) (:keywords ...) (:description ...) (:title ...))|という変な名前ですが、title keywords description h1を抜き出して返す関数名が思い付かなかったので返す結果の形をそのまま名前にしています。Common Lispは名前に記号も使えるので思考が停止したときに便利ですね。
<pre>
(defun |((:h1 ...) (:keywords ...) (:description ...) (:title ...))| (url)
  (let* ((page (drakma:http-request url))
         (doc (chtml:parse page (cxml-stp:make-builder)))
         (ans () ))
    (stp:do-recursively (a doc)
      (when (and (typep a 'stp:element)
                 (or (string-equal (stp:local-name a) \"title\")
                     (string-equal (stp:local-name a) \"meta\")
                     (string-equal (stp:local-name a) \"h1\")))
        (let* ((kwd-or-dsc (cond ((string-equal (stp:attribute-value a \"name\")
                                                \"description\")
                                  `(:description
                                    ,(stp:attribute-value a \"content\")))
                                 ((string-equal (stp:attribute-value a \"name\")
                                                \"keywords\")
                                  `(:keywords
                                    ,(stp:attribute-value a \"content\")))))
               (tag (intern (string-upcase (stp:local-name a)) :keyword))
               (svalue (stp:string-value a))
               (tem () ))
          (cond ((and (string= \"\" svalue)
                      (eq :meta tag))
                 :nop)
                ('T (push svalue tem)
                    (push tag tem)))
          (when kwd-or-dsc
            (push (cadr kwd-or-dsc) tem)
            (push (car kwd-or-dsc) tem))
          (and tem (push tem ans))
          )))
    ans))
</pre>
この|((:h1 ...) (:keywords ...) (:description ...) (:title ...))|を使って
<pre>
(progn
  (print '////////////////////////////////////////////////////////////////)
  (dolist (x (fare-csv:read-csv-file \"foo.csv\"))
    (destructuring-bind (url title kwd dsc h1) x
      (let* ((url (ppcre:regex-replace \"://www.example.com\" ;CSVファイルのURL
                                       url
                                       \"://www.example.net\")) ;実際のサーバーのURL
             (q (|((:h1 ...) (:keywords ...) (:description ...) (:title ...))| url)))
        (flet ((*check (var key)
                 (string= var (second (assoc key q)))))
          (cond ((and (*check h1 :h1)
                      (*check kwd :keywords)
                      (*check dsc :description)
                      (*check title :title))
                 :nop)
                ('t
                 (flet ((frob (var key)
                          (list key
                                (if (*check var key)
                                    :ok
                                    (list :ng var (second (assoc key q)))))))
                   (print '*******************************************)
                   (print url)
                   (print (frob h1 :h1))
                   (print (frob kwd :keywords))
                   (print (frob dsc :description))
                   (print (frob title :title))))))))))
</pre>
のように殴り書きしてみました。キーワードが一致していないと
<br>
<pre>
////////////////////////////////////////////////////////////////
*******************************************
\"http://www.example.com/foo/bar\" 
(:H1 (:NG \"こんにちは\" \"Routing Error\")) 
(:KEYWORDS (:NG \"なるほど\" NIL)) 
(:DESCRIPTION (:NG \"なんのことですか？\" NIL)) 
(:TITLE (:NG \"ｍｊｄ！\" \"Action Controller: Exception caught\")) 
...
</pre>
のような結果がREPLに出てきます。
<br>
なんだか長いですけど、Common Lispで書いても実行を確認しながら書けるので、そんなに大変でもありません。
<br>
■
"
 :AUTHOR "chiba" :DATE 3486158018 :CATEGORY "LISP")
(:PATH "/3486766146" :TITLE "隙があればlispを詰め込んで行きたい (4)" :BODY
 "隙があればlispを詰め込んで行きたい日々ですが、今回はWordPressのデータをいじる仕事です。<br />
仕事の内容ですが、WordPressにはカスタムフィールドという便利機能があり、ここに入力したデータが便利にページに表示されます。<br />
このカスタムフィールド内のHTMLを大量に変更することになりました。<br />
具体的には、<br />
<pre>
select * from wp_postmeta where meta_key = 'こんにちは画像';
</pre>
で目的の内容が取得できるので、このテキストの内容を置換して同じ場所に戻してやる、ということになります。<br />
SQL文を書いて色々すれば良いのですが、CLSQLを使ってみることにしました。<br />
<pre>
(asdf:oos 'asdf:load-op :clsql)
(in-package :clsql-user)

(connect '(\"localhost\" \"db\" \"wp\" \"\")
         :database-type :mysql)
  
(execute-command \"set character_set_client='utf8'\")
(execute-command \"set character_set_connection='utf8'\")
(execute-command \"set character_set_results='utf8'\"))

;; DBから読み出してSQLを出力
;; &lt;a href=...&gt;を&lt;a target=\"_blank\" href=...&gt;に変更

(let ((ahref (ppcre:create-scanner \"(&lt;a)(\\\\s+)(href=.*)\"))
      (window.open (ppcre:create-scanner \"window.open\")))
  (alexandria:with-output-to-file (out \"/tmp/foo.txt\")
    (do-query ((meta_id post_id meta_key meta_value)
               \"select * from wp_postmeta where meta_key = 'こんにちは画像';\")
      (cond ((ppcre:scan \"window.open\" meta_value)
             ;; 既にwindow.openで開くような指定があるばあいはスルー
             :nop)
            ('T (let ((new-val
                       (ppcre:regex-replace 
                        ahref
                        meta_value
                        (lambda (match &rest registers)
                          (declare (ignore match))
                          (destructuring-bind (a b c) registers
                            (format nil
                                    \"~a target=\\\"_blank\\\"~a~a\"
                                    a
                                    b
                                    c)))
                        :simple-calls 'T)))
                  (format out
                          \"update wp_postmeta set meta_value = '~A' where meta_key = 'こんにちは画像' and post_id = ~A;~%\" 
                          new-val
                          post_id))))))) 
</pre>
内容としては、
<ul>
  <li>CLSQLを準備</li>
  <li>MySQLに接続</li>
  <li>文字コードをUTF-8に設定(任意)</li>
  <li>select文を発行して結果をリストで受けとる</li>
  <li>リストの内容から、目的の文を取り出しPPCRE(Common LispのPerl正規表現互換パッケージ)で処理</li>
  <li>ファイルにSQL文を書き出し</li>
</ul>
今回は目的のSQLサーバーに直接接続するのが面倒だったので、ファイルにSQL文を書き出しましたが、CLSQLで接続して変更ということも勿論できます。<br />
また、\"select〜\"みたいなことになっていますが、(select [...])のようにも書けるようです。<br />
色々適当ですが、とりあえず目的は達成できました<br />
■"
 :AUTHOR "chiba" :DATE 3486766146 :CATEGORY "lisp")
(:PATH "/3487564229" :TITLE "隙があればlispを詰め込んで行きたい (5)" :BODY
 "隙があればlispを詰め込んで行きたい日々ですが、今回は一つのファイルを複数ファイルに分割する仕事です。<br />
こういうのはやっぱりsed/awkの仕事だろう、と思うのですが、一つLISPでがんばりたいところ<br />
具体的な仕事内容ですが、
<ol>
<li>複数のエントリーがまとめられた、複数の長いテキストファイルを入力とする</li>
<li>エントリーの区切り文字は^_</li>
<li>エントリーごとに1ファイルにして出力
</ol>
というところです。<br />
書き捨てな感じですが、
<pre>
(dolist (file (directory \"/var/tmp/foo/bar/big-*.txt\"))
  (dolist (mail (cl-utilities:partition-if 
                 (mycl-util:curry #'string= \"^_\")
                 (kmrcl:read-file-to-strings file)))
    (alexandria:with-output-to-file 
        (out (format nil \"/var/tmp/result/~A\" (gensym \"foo-\")))
      (print out)
      (dolist (line mail)
        (write-line line out)))))
</pre>
のように書いてみました。<br />
軽く解説すると、
<ol>
<li>ファイル読み込み1行を要素とするリストにする</li>
<li>PARTITION-IFでリストの中身をデリミタで1ファイル1リストとして分割する
<li>分割した要素1リストを1ファイルとして出力。名前が被らないようにGENSYMで名前をつける</li>
</ol>
という風にしてみました。
<br />
想像していたより短く書けたので満足です。
<br />
■
"
 :AUTHOR "chiba" :DATE 3487564229 :CATEGORY "")
(:PATH "/3487632078" :TITLE "Ruby で Google Analytics API" :BODY
 "<p class=\"first\">こんにちは!! tahara です。
Ruby で Google Analytics API をたたいてみました。</p>

<p>といっても <a href=\"http://github.com/vigetlabs/garb\">Garb</a> を使えば簡単です。
ユーザID(email)とパスワードでも認証ができるのですが、今回は OAuth を使います。</p>

<p>インストール</p>

<pre class=\"example\">
gem install garb oauth
</pre>

<p>まずは <a href=\"http://everburning.com/news/google-analytics-oauth-and-ruby-oh-my/\">Google Analytics, OAuth and Ruby. Oh, my. ｜ everburning</a> を参考に OAuth します。
あらかじめ <a href=\"https://www.google.com/accounts/ManageDomains\">https://www.google.com/accounts/ManageDomains</a> から CONSUMER_KEY と CONSUMER_SECRET を取得しておく必要があります。</p>

<pre class=\"src\">
# -*- coding: utf-8 -*-

require 'oauth'

CONSUMER_KEY = <span style=\"color: #ffa07a;\">\"xxxxxx\"</span>
CONSUMER_SECRET =<span style=\"color: #ffa07a;\">\"xxxxxxxxx\"</span>

consumer = OAuth::Consumer.new CONSUMER_KEY, CONSUMER_SECRET, {
      :signature_method   =&gt; 'HMAC-SHA1',
      :site               =&gt; 'https://www.google.com',
      :request_token_path =&gt; '/accounts/OAuthGetRequestToken',
      :authorize_path     =&gt; '/accounts/OAuthAuthorizeToken',
      :access_token_path  =&gt; '/accounts/OAuthGetAccessToken',
    }

request_token = consumer.
  get_request_token({}, :scope =&gt; <span style=\"color: #ffa07a;\">\"https://www.google.com/analytics/feeds/\"</span>)

# 次の URL をブラウザでアクセスし、確認コードを取得する。
p request_token.authorize_url

# 取得した確認コード
ACCESS_CODE = <span style=\"color: #ffa07a;\">\"xxxxxxxxx\"</span>

# 確認コードからアクセストークンを取得
access_token = request_token.get_access_token(:oauth_verifier =&gt; ACCESS_CODE)

# access_token.token と access_token.secret を取得する。
p access_token.token
p access_token.secret
ACCESS_TOKEN = access_token.token
ACCESS_SECRET = access_token.secret

# 次回からは次のようにしてアクセストークンを生成する。
access_token = OAuth::AccessToken.new(consumer, ACCESS_TOKEN, ACCESS_SECRET)
</pre>

<p>CONSUMER_KEY, CONSUMER_SECRET, ACCESS_TOKEN, ACCESS_SECRET がそろったので準備完了です。
Garb を使ってみます。
次は正規表現 ^/facilities/[0-9]+$ にマッチするページのページビューを取得するコードです。</p>

<pre class=\"src\">
# -*- coding: utf-8 -*-
=begin
http://github.com/vigetlabs/garb
=end

require <span style=\"color: #ffa07a;\">\"garb\"</span>
require <span style=\"color: #ffa07a;\">\"oauth\"</span>

CONSUMER_KEY = <span style=\"color: #ffa07a;\">\"xxxxx\"</span>
CONSUMER_SECRET =<span style=\"color: #ffa07a;\">\"xxxxxx\"</span>
ACCESS_TOKEN = <span style=\"color: #ffa07a;\">\"xxxxx\"</span>
ACCESS_SECRET = <span style=\"color: #ffa07a;\">\"xxxxx\"</span>

consumer = OAuth::Consumer.new CONSUMER_KEY, CONSUMER_SECRET, {
      :signature_method   =&gt; 'HMAC-SHA1',
      :site               =&gt; 'https://www.google.com',
      :request_token_path =&gt; '/accounts/OAuthGetRequestToken',
      :authorize_path     =&gt; '/accounts/OAuthAuthorizeToken',
      :access_token_path  =&gt; '/accounts/OAuthGetAccessToken',
    }
access_token = OAuth::AccessToken.new(consumer, ACCESS_TOKEN, ACCESS_SECRET)

Garb::Session.access_token = access_token

# プロファイル を指定
profile = Garb::Profile.first('UA-xxxxxxx-x')

class PageView
  extend Garb::Resource

  # 横に並ぶ項目。複数指定可能
  metrics :pageviews
  # 縦に並ぶ項目。複数指定可能
  dimensions :page_path
  # 並び順。複数指定可能。降順は後に .desc をつける。
  sort :pageviews.desc

  # フィルタ
  filters do
    # 正規表現で指定可能
    # http://code.google.com/intl/ja/apis/analytics/docs/gdata/gdataReferenceDataFeed.html#filters
    # http://www.google.com/support/analytics/bin/answer.py?answer=55582
    contains(:page_path, '^/facilities/[0-9]+$')
  end
end

# OpenStruct の配列で結果を取得。最大 10000 件取得できる。:offset で取得開始位置も指定可能。
res = PageView.results(profile, :start_date =&gt; '2010-07-01'.to_date, :end_date =&gt; '2010-07-07'.to_date, :limit =&gt; 10000)
# =&gt; [#&lt;OpenStruct page_path=<span style=\"color: #ffa07a;\">\"/facilities/159\"</span>, pageviews=<span style=\"color: #ffa07a;\">\"1237\"</span>&gt;, #&lt;OpenStruct page_path=<span style=\"color: #ffa07a;\">\"/facilities/164\"</span>, pageviews=<span style=\"color: #ffa07a;\">\"1061\"</span>&gt;, ...]
</pre>

<p><a href=\"http://code.google.com/intl/ja/apis/analytics/docs/gdata/gdataExplorer.html\">Data Feed Query Explorer - Google Analytics - Google Code</a> ではブラウザから Analytics Data Export API をたたけるようになっていますので、
このページを参考にしながら、 metrics や dimensions の設定をいろいろかえると面白いことができるかもしれません。</p>
"
 :AUTHOR "tahara" :DATE 3487632078 :CATEGORY "Google")
(:PATH "/3488082520" :TITLE "WordPressとActiveRecord" :BODY
 "WordPressのデータを一括でいろいろと変更する際には、SQLでいろいろすると思うのですが、もしかしてActiveRecordを使えたら割と便利だったりするのかな、ということでActiveRecordからWordPressのDBに接続してみたりしていました。
<br>
しかし、これは既に試してみている人が絶対いそうだなと思ったので軽くググってみたところ、やはり、そのものズバリがありました。
<br>
<a href=\"http://github.com/jystewart/wp_ar/tree\">github: jystewart / wp_ar</a>
<br>
こんな感じで使えます。
<br>
<pre>
irb(main):254:0&gt; WpUser.count
12
</pre>
150行弱のコードですが、機械的に変換する作業には割と使えるかもしれないなと思いました。
<br>
自分も、CLSQLなどで同じようなものを組んでみたいです。
■"
 :AUTHOR "chiba" :DATE 3488082520 :CATEGORY "ActiveRecord")
(:PATH "/3488673731" :TITLE "隙があればlispを詰め込んで行きたい (6)" :BODY
 "非常にどうでも良い理由で今日が祝日であるかどうかを判定したくなりました。
<br />
休日の判定は思ったより色々面倒そうですが、動機がどうでも良いことだけに簡単に済ませたいところ。
<br />
ということで、休日情報のAPIが公開されていないか調べたところ、いくつかみつかったのですが、Google Calendarからjsonで手軽に情報を取得できるようなので、これを使ってみることにしました。
<br />
<pre>
(DEFUN GET-CALENDAR-JSON (UT)
  (LET ((REQUEST-URL 
         (KMRCL:MAKE-URL 
          &quot;full&quot;
          :BASE-DIR &quot;http://www.google.com/calendar/feeds/japanese@holiday.calendar.google.com/public/&quot;
          :VARS `((&quot;start-min&quot; . ,(XYZZY:FORMAT-DATE-STRING &quot;%Y-%m-%d&quot; UT))
                  (&quot;start-max&quot; . ,(XYZZY:FORMAT-DATE-STRING 
                                   &quot;%Y-%m-%d&quot;
                                   (+ UT (* 24 60 60))))
                  (&quot;max-results&quot; . &quot;1&quot;)
                  (&quot;alt&quot; . &quot;json-in-script&quot;)
                  (&quot;callback&quot; . &quot;handleJson&quot;)))))
    (STRING-TRIM &quot;handleJson();&quot;
                 (SB-EXT:OCTETS-TO-STRING
                  (DRAKMA:HTTP-REQUEST REQUEST-URL :FORCE-BINARY 'T)))))

(DEFUN -&gt; (LIST &amp;REST KEYS)
  (IF (ENDP KEYS)
      LIST
      (KMRCL:AWHEN (FIND (CAR KEYS) LIST :KEY #'ZL:CAR-SAFE)
        (APPLY #'-&gt; KMRCL:IT (CDR KEYS)))))

(DEFUN HOLIDAY-P (&amp;OPTIONAL (UT (GET-UNIVERSAL-TIME)))
  (LET ((DAY (NTH-VALUE 6 (DECODE-UNIVERSAL-TIME UT))))
    (OR (&lt;= 5 DAY)
        (&lt; 0
           (CDR
            (-&gt; (JSON:DECODE-JSON-FROM-STRING (GET-CALENDAR-JSON UT))
                :FEED
                :OPEN-SEARCH$TOTAL-RESULTS
                :$T))))))
</pre>
<pre>
(HOLIDAY-P)
;⇒ 今日が休日ならT

(HOLIDAY-P (ENCODE-UNIVERSAL-TIME 0 0 0 21 7 2010))
;⇒ NIL

(HOLIDAY-P (ENCODE-UNIVERSAL-TIME 0 0 0 19 7 2010))
;⇒ T
</pre>
どうやらGoogle Calendarだと今年分しか情報が取得できない様子なのですが、当日が休日なのかどうかを判定できさえすれば良いのでこれでOKとします。
<br />
■
"
 :AUTHOR "chiba" :DATE 3488673731 :CATEGORY "LISP")
(:PATH "/3489112542" :TITLE "ERBでのコメントアウトについて" :BODY "こんにちは!、千葉です!
<br />
RailsのViewでは、ERBが使われていますが、#や、=begin、=endの範囲コメントは入れ子になった場合に使い勝手が悪いことが多いですよね。
<br />
皆さんざっくりコメントアウトするときには、どういう方法を使っているのでしょうか。
<br />
自分は、とりあえず、
<pre>
&lt;%- if false -%&gt;
コメントアウトしたいこと
&lt;%- end -%&gt;
</pre>
と書いたり、
<pre>
def comment(&body)
end
</pre>
というのを定義して、
<pre>
&lt;%- comment { -%&gt;
コメントアウトしたいこと
&lt;%- } -%&gt;
</pre>
などとしてみたりでしのいでいますが、もっと楽な方法はある気がしてなりません。
<br />
■
"
 :AUTHOR "chiba" :DATE 3489112542 :CATEGORY "ERB")
(:PATH "/3489465278" :TITLE "Emacsで複数のバッファのファイル名を控えておきたいとき" :BODY
 "こんにちは、chibaです!
<br />
Emacsで色々な場所にちらばっている複数のバッファを編集しつつ、編集したファイルだけ名前を控えておきたいとき、皆さんはどのように対処されてますでしょうか。
<br />
多分、本当にたまにしか必要に迫られることはないと思うのですが、<br />
自分の考えた解決法は、<br />
M-:して<br />
<pre>
Eval: (push (buffer-file-name) foo)
</pre>
してfooにファイル名を蓄積して、*scratch*などで、fooを評価して一覧を得るというものです。<br />
<pre>
foo ;; C-u C-x C-eなど
(&quot;/home/mc/tmp/g13237.del&quot; &quot;/home/mc/work/log/log-2010-07-30.org&quot; ...)
</pre>
とりあえず、これでしのげましたが、なんとなくEmacs標準の方法がありそうですねー。
<br />
■
"
 :AUTHOR "chiba" :DATE 3489465278 :CATEGORY "Emacs")
(:PATH "/3490053352" :TITLE "隙があればlispを詰め込んで行きたい (7)" :BODY "こんにちは、chibaです!
<br />
隙があればlispを詰め込んで行く毎日ですが、今日の課題は、
<pre>
  \"8/24(火)、
8/25(水)、
8/26(木)、
8/27(金)
8/31(火)、
9/1(水) 、
9/2(木) 、
9/3(金)
9/7(火) 、
9/8(水) 、
9/9(木) 、
9/10(金)
9/14(火)、
9/15(水)、
9/16(木)、
9/17(日)\"
</pre>
のような、曜日付き日付の文字列が与えられた場合に、日付に対応している曜日が正しいかの判定です。
<br>
日付はそれほどでもないですが、曜日は結構間違ってたりすることも多いですよね。
<br>
<pre>
(SET' FOO
  \"8/24(火)、
8/25(水)、
8/26(木)、
8/27(金)
8/31(火)、
9/1(水) 、
9/2(木) 、
9/3(金)
9/7(火) 、
9/8(水) 、
9/9(木) 、
9/10(金)
9/14(火)、
9/15(水)、
9/16(木)、
9/17(日)\")

(PPCRE:DO-REGISTER-GROUPS ((#'PARSE-INTEGER MON) (#'PARSE-INTEGER DATE) DOW)
    (\"(\\\\d+)/(\\\\d+)\\\\((.+)\\\\).*\" FOO)
  (LET* ((CDOW (NTH-VALUE 6 (DECODE-UNIVERSAL-TIME (ENCODE-UNIVERSAL-TIME 0 0 0 DATE MON 2010))))
         (X (FORMAT NIL \"~D/~D (~A)\" MON DATE (ELT \"月火水木金土日\" CDOW)))
         (Y (FORMAT NIL \"~D/~D (~A)\" MON DATE DOW)))
    (FORMAT T \"~A => ~A~%\" X Y)
    (UNLESS (STRING= X Y)
      (ERROR \"曜日が間違っています! (正)~A => (誤)~A~%\" X Y))))
</pre>
動作:
<br />
<pre>
8/24 (火) => 8/24 (火)
8/25 (水) => 8/25 (水)
8/26 (木) => 8/26 (木)
8/27 (金) => 8/27 (金)
8/31 (火) => 8/31 (火)
9/1 (水) => 9/1 (水)
9/2 (木) => 9/2 (木)
9/3 (金) => 9/3 (金)
9/7 (火) => 9/7 (火)
9/8 (水) => 9/8 (水)
9/9 (木) => 9/9 (木)
9/10 (金) => 9/10 (金)
9/14 (火) => 9/14 (火)
9/15 (水) => 9/15 (水)
9/16 (木) => 9/16 (木)
9/17 (金) => 9/17 (日)
;>>> 曜日が間違っています! (正)9/17 (金) => (誤)9/17 (日)
</pre>
こんな感じのものを書いてしのいでみました。
<br />
大体の内容ですが、単純に正規表現で切り出してシステムから割り出したものと一致するかを見ているだけです。
<br />
Common Lispで適当に書き捨てましたが、どちらかというとelispで書いた方が役立つ機会は多いかもしれません。
■
"
 :AUTHOR "chiba" :DATE 3490053352 :CATEGORY "LISP")
(:PATH "/3490064003" :TITLE "隙があればlispを詰め込んで行きたい (8)" :BODY "こんにちは、chibaです!
<br />
隙があればlispを詰め込んで行く毎日を連投です。
<br />
このシリーズの<a href=\"http://tech.actindi.net/3488673731\">6回目</a>で本日が祝日であるかどうかを判定したい、というネタを投稿しましたが、そもそも何がしたかったかというと、業務時間かどうかによってFirefoxや、Skypeのプロファイルを切り替えられるようにしてみたら便利かな、というのが動機でした。
<br>
ということで、この前のHOLIDAY-Pを拡張して、IN-WORKING-HOURS-Pというのを作成し、就業時間中は、仕事用のプロファイルでアプリを起動することにしてみました。
<br>
そういえば今迄説明なしで来てしまいましたが、もちろんウィンドウマネージャーはStumpWMです!
<pre>
(DEFUN IN-WORKING-HOURS-P ()
  (AND (NOT (HOLIDAY-P))
       (< 6
          (NTH-VALUE 2 (DECODE-UNIVERSAL-TIME (GET-UNIVERSAL-TIME)))
          17)))

;; firefox
(DEFCOMMAND FIREFOX () ()
  \"Run or switch to firefox.\"
  (IF (IN-WORKING-HOURS-P)
      (run-or-raise \"/usr/bin/firefox -P \\\"work\\\" \" '(:class \"Firefox\"))
      (run-or-raise \"/usr/bin/firefox -P \\\"home\\\"\" '(:class \"Firefox\"))))
</pre>
これで、会社で同僚にFirefoxを使って説明をしているときに、アッー!なURLの履歴などが出てきてしまいアッー!っとなることを防げますね。
■
"
 :AUTHOR "chiba" :DATE 3490064003 :CATEGORY "StumpWM")
(:PATH "/3491523364" :TITLE "隙があればlispを詰め込んで行きたい (9)" :BODY "こんにちは、chibaです!
<br>
隙があればlispを詰め込んで行く日々ですが、古めのウェブページの累計カウンター的な物を月に一回更新するという作業が発生しました。
<br />
sedで一発かなと思いましたが、sedで一発と思ったらCLで書くことにしているので、CLで書いてみます。
<br />
具体的な内容ですが、index.htmlの中に、カウンター的なものがあり、数字はそれぞれ1枚のGIF画像になっているのを、毎月集計された数字に更新というところです。
<br>
サーバーとは、SSHで通信できます。
<br>
折角なので、リモートのファイルをローカルのファイルと同じ感覚で編集できるようなマクロを作成してみました。
<br>
といってもリモートからscpしてきて編集するだけのものです。
<br>
これと、以前に定義したオレオレsedを組み合わせて任務は完了です。
<br>
<pre>
(exec:define-executable scp)

(defmacro with-output-to-remote-file ((stream path) &body body)
  (let ((temp-file-name (string (gensym &quot;/tmp/with-output-to-remote-file-&quot;))))
    `(unwind-protect (progn
                       (with-open-file (,stream ,temp-file-name :direction :output)
                         ,@body)
                       (scp ,temp-file-name ,path)
                       nil)
       (when (cl-fad:file-exists-p ,temp-file-name)
         (delete-file ,temp-file-name)))))

(defmacro with-input-from-remote-file ((stream path) &body body)
  (let ((temp-file-name (string (gensym &quot;/tmp/with-input-from-remote-file-&quot;))))
    `(unwind-protect (progn
                       (scp ,path ,temp-file-name)
                       (with-open-file (,stream ,temp-file-name)
                         ,@body)
                       nil)
       (when (cl-fad:file-exists-p ,temp-file-name)
         (delete-file ,temp-file-name)))))

(defun カウンター (num)
  (fare-utils:join-strings
   (list
    &quot;&lt;!-- カウンター --&gt;&quot; 
    &quot;&lt;div id=\\&quot;count\\&quot;&gt;&quot; 
    &quot;&lt;table id=\\&quot;counter\\&quot;&gt;&quot; 
    &quot;&lt;tr&gt;&quot; 
    &quot;&lt;td&gt;&quot; 
    (format nil
            &quot;~{&lt;img src=\\&quot;./images/count_~a.gif\\&quot; alt=\\&quot;\\&quot; /&gt;~%~}&quot;
            (map 'list #'values (write-to-string num)))
    &quot;&lt;/td&gt;&quot; 
    &quot;&lt;td&gt;&nbsp;&lt;img src=\\&quot;./images/count_ken.gif\\&quot; alt=\\&quot;\\&quot; width=\\&quot;18\\&quot; height=\\&quot;17\\&quot; /&gt;&lt;/td&gt;&quot; 
    &quot;&lt;/tr&gt;&quot; 
    &quot;&lt;/table&gt;&quot; 
    &quot;&lt;/div&gt;&quot;
    &quot;&lt;!-- /カウンター --&gt;&quot;)
   :separator #\\Newline))
</pre>
<pre>
;; 実行例
(with-output-to-remote-file (out &quot;example:public_html/index.html&quot;)
  (with-input-from-remote-file (in &quot;example:public_html/index.html&quot;)
    (sed &quot;&lt;!-- カウンター --&gt;&quot;
         &quot;&lt;!-- /カウンター --&gt;&quot; 
         (カウンター 12345)
         :IN IN
         :OUT OUT)))
</pre>
■
<br>
"
 :AUTHOR "chiba" :DATE 3491523364 :CATEGORY "LISP")
(:PATH "/3491875086" :TITLE "低価格レンタルサーバーの共有SSLとWordPress (2)" :BODY
 "こんにちは、chibaです!
<br>
完全にネタ切れなので、中途半端にWordPressのことを書きます。
<br>
続きものだった筈の<a href=\"http://tech.actindi.net/3474892431\">低価格レンタルサーバーの共有SSLとWordPress (1)</a>を書いてから半年程放置してしまいましたが、WordPressも3系が出たということでこのテーマについて少しまとめてゆくことにしてみました。
<br>
前回は1つのWordPress+低価格レンタルサーバーでSSLサイトと通常のサイトをどう切り盛りするかというのがテーマでしたが、色々試してみた結果、1つのWordPressでがんばらずにフォーム専用のWordPressを別個にインストールして使うことにするのが一番手間がかからないようです。
<br>
ちょっとした問題としては、SSL専用でWordPressを利用する場合、WordPress2系ではどういう訳かSSLの状態では管理画面にまともにログインできませんでした。
<br>
大抵のところでは、URLがhttpでもhttpsでも使えるので管理画面のログインはhttpでサイトの利用はhttpsという謎な運用をすることにより回避できていましたが、WordPress3系では解決しているようです。これは嬉しいところですね。
<br>
非常に中途半端ですが、次回に続きます…
<br>
■
"
 :AUTHOR "chiba" :DATE 3491875086 :CATEGORY "WordPress")
(:PATH "/3492486546" :TITLE "マニュアル/ソースを良く読もう!" :BODY "こんにちは、chibaです!
<br>
完全にネタ切れなので、中途半端に失敗談を書きます。
<br>
skype.elは非常に便利なのですが、自分のEmacsの操作が鈍い所為かチャットの切り換えにいつも、もたもたしておりました。
<br>
このままではいけないと思った私は、便利elispを書いて対応することに。
<br>
社内のSkypeの利用形態としては、グループチャットが主で使われる部屋も2つ位と少ないので、このチャットをキー一発で開ければOKであろうと思われました。
<br>
ということで、skype.elをちらちら見つつ、
<pre>
(require 'cl)

(defun *skype-find-ai-chat (name)
  (let ((chat (find-if (lambda (x) 
                         (search name
                                 (aref x 2)))
                       (skype--chat-get-recent-objects))))
    (when chat
      (switch-to-buffer
       (skype--open-chat-buffer chat)))))

(defun skype-open-konnichiwa-chat ()
  (interactive)
  (*skype-find-ai-chat &quot;こんにちは&quot;))

(defun skype-open-kombanwa-chat ()
  (interactive)
  (*skype-find-ai-chat &quot;こんばんは&quot;))

(defun skype-open-oyasuminasai-chat ()
  (interactive)
  (*skype-find-ai-chat &quot;おやすみなさい&quot;))

(define-key global-map [(super ?1)] 'skype-open-konnichiwa-chat)
(define-key global-map [(super ?2)] 'skype-open-kombanwa-chat)
(define-key global-map [(super ?3)] 'skype-open-oyasuminasai-chat)
</pre>
のような物を書いてみました。
<br>
これで、Super-1〜2で目的の部屋を一発で開くことができます。
<br>
これは割と便利だなーと思いつつ、改めて、skype.elを眺めたところ、
<pre>
(global-set-key (kbd &quot;M-9&quot;) 'skype--anything-command)
</pre>
とするとanything.elと連携できて良いよ!との解説が。
<br>
試してみたところ、断然こっちの方が便利でした。
<br>
やはりREADME的なものはちゃんと読もう、と思った次第です。
<br>
■"
 :AUTHOR "chiba" :DATE 3492486546 :CATEGORY "Emacs")
(:PATH "/3492489572" :TITLE "空白一つにこだわりたい(2)" :BODY "こんにちは、chibaです!
<br>
完全にネタ切れなのですが、毎週1つのエントリーペースは守って行きたいので連投です。
<br>
質より量でまいります。
<br>
以前、<a href=\"http://tech.actindi.net/3481435886\">空白一つにこだわりたい</a>というエントリーを書きましたが、割と日々便利に使っています。
<br>
最近はちょっと違ったところで、空白を一つにしたい状況に遭遇しています。
<pre>
- [ ]  こんにちは   あいうえお    かきくけこ
- [ ]   こんばんは  あいうえお   かきくけこ
- [ ]  おはよう  あいうえお   かきくけこ
</pre>
という感じなのですが、何かから行をコピペしてくると発生することが多いです。
<br>
これをちまちま直しているのが非常に手間ということで、適当に、elispを書いてみました。
<pre>
(defun just-one-space-each ()
  (interactive)
  (save-excursion
    (let* ((begin (progn (beginning-of-line) (point)))
           (end (progn (end-of-line) (point)))
           (begin (min begin end))
           (end (max begin end)))
      (goto-char begin)
      (while (and (re-search-forward &quot; +&quot; nil t) (&lt;= (point) end))
        (replace-match &quot; &quot;)))))
</pre>
各行で実行すると
<pre>
- [ ] こんにちは あいうえお かきくけこ
- [ ] こんばんは あいうえお かきくけこ
- [ ] おはよう あいうえお かきくけこ
</pre>
という風に空白1つに統一できます。快適!
<br>
ちなみに、Twitterのつぶやきで最近 delete-indentation (M-^)というのを教えてもらいました。
<br>
行の連結に使えるのですが、just-one-spaceの使いどころと似ています。
■"
 :AUTHOR "chiba" :DATE 3492489572 :CATEGORY "Emacs")
(:PATH "/3492988117" :TITLE "Rubyでなにもしない" :BODY "こんにちは、chibaです!<br>
最近、文字列を場合に応じてUTF-8(デフォルト)と、sjisに切り換えて文字を生成したいということがありました。
<br>
自分としては、
<pre>
&quot;こんにちは&quot;.send(if sjis? then :tosjis else なにもしない end)
</pre>
と書きたかったのですが、Rubyでなにもしないメソッドってなんだったかなーと探してもなかなか見付かりません。
Haskellでいうid、LISP系では、identityというのが多いのですが、ruby identityでググったら、
- <a href=\"http://redmine.ruby-lang.org/issues/show/841\">Ruby 1.9 - Feature #841: Object#self - Ruby Issue Tracking System</a>
<br>
という一連のスレッドがみつかりました。
<br>
なるほど、提案はされているもののリジェクトされてるんですね。
<br>
高階手続きに馴染んでいる人ならば、identityの有用性は体験していると思うのですが、馴染みのない人からは、identityみたいに何もしないでそのまま受け取った値を返すものなんて何に使うの?という意見は割とFAQかなと思います。
<br>
この議論中で
<pre>
class Object
  def identity() self; end
end
</pre>
というのが例として挙げられていました。これを使えば、
<pre>
&quot;こんにちは&quot;.send(if sjis? then :tosjis else :identity end)
</pre>
や
<pre>
&quot;こんにちは&quot;.send(sjis? ? :tosjis : :identity)
</pre>

と書ける訳ですね。
<br>
それで結局自分はどうしたかというと、Objectにメソッドを定義するのも気が引けたので
<pre>
str = &quot;こんにちは&quot;
if sjis? then 
  str.tosjis
else
  str
end
</pre>
とか、
<pre>
str = &quot;こんにちは&quot;
sjis? ? str.tosjis : str
</pre>
と書くことにしました。
<br>
これはこれで妥当ですね。
■
"
 :AUTHOR "chiba" :DATE 3492988117 :CATEGORY "Ruby")
(:PATH "/3493604311" :TITLE "自分好みにウィンドウ切り換え (1)" :BODY "こんにちは、chibaです!
<br>
ネタ切れなので、Emacsをいじります。
<br>
Emacsを利用している方で、
<a href=\"http://www.morishima.net/~naoto/software/elscreen/index.php.ja\">ElScreen</a>を使っている方は多いと思います。
<br>
自分も確かに便利だなあと思うのですが、どうも挙動が自分の好みに合わないところがあり、代りにEmacsのレジスタ機能を使ってみたりしていました。(逆にややこしいですが…)
<br>
先日ふと、ウィンドウの構成はどういう風に保存/復帰しているのかを調べてみたら、(current-window-configuration)で構成を取得、set-window-configurationで設定という感じでした。
<br>
思いのほか単純だったので、自分好みの挙動をするようなものを作って行ってみようかと思います。
<br>
とりあえずで、window-configuration-listという循環リストにウィンドウの構成を保存するだけの素朴なものをでっち上げてみました。循環リストなので、くるくる回ります。
<br>
これだけでも割と使えていますが、もうちょっと便利にしたいですね。
<pre>
;; 循環リストを作成する
(defun circular-list (&amp;rest elts)
  (cdr (rplacd (last elts) elts)))

(defvar window-configuration-list)

(defun init-window-configuration-list ()
  (setq window-configuration-list
        (circular-list (current-window-configuration))))

;; window-configurationをリストにプッシュ
(defun push-window-configuration ()
  (interactive)
  (push (current-window-configuration)
        (cdr window-configuration-list))
  (message (format &quot;created (%d)&quot;
                   (window-configuration-list-size window-configuration-list))))

;; FIXME eqで比較するだけ
(defun window-configuration-list-size (wc)
  (let ((start wc)
        (cnt 1))
    (catch 'count
      (mapl (lambda (x)
              (when (eq start x)
                (throw 'count nil))
              (incf cnt))
            (cdr wc)))
    cnt))

(defun cycle-window-configuration-list ()
  (interactive)
  ;; 現在の窓の状態で更新
  (setcar window-configuration-list
          (current-window-configuration))
  ;; 順送り
  (setq window-configuration-list
        (cdr window-configuration-list))
  ;; 次の要素を現在の窓設定にする
  (set-window-configuration
   (car window-configuration-list)))

(defun delete-window-configuration ()
  (interactive)
  (setcar window-configuration-list
          (cadr window-configuration-list))
  (setcdr window-configuration-list
          (cddr window-configuration-list))
  (set-window-configuration
   (car window-configuration-list))
  (message (format &quot;deleted (-> %d)&quot;
                   (window-configuration-list-size
                    window-configuration-list)))) )

(progn
  ;; keybind
  (define-key global-map [(control meta ?l)] 'cycle-window-configuration-list)
  (define-key global-map [(control meta shift ?i)] 'push-window-configuration)
  (define-key global-map [(control meta ?!)] 'delete-window-configuration) )

(init-window-configuration-list)
</pre>
■
"
 :AUTHOR "chiba" :DATE 3493604311 :CATEGORY "Emacs")
(:PATH "/3494311198" :TITLE "Edit with EmacsとStumpWMの連携が便利!" :BODY
 "こんにちは、chibaです!<br />
Emacs大好きな自分は、Firefoxのテキストエリアの編集には、<a href=\"https://addons.mozilla.org/ja/firefox/addon/4125\">It's All Text!</a>を利用しているのですが、最近Chromeを使うことも多く、<a href=\"https://addons.mozilla.org/ja/firefox/addon/4125\">It's All Text!</a>みたいなのが、Chromeにもないかなあとちょっと探してみたらEdit with Emacsというのをみつけました。<br />
<a href=\"https://addons.mozilla.org/ja/firefox/addon/4125\">It's All Text!</a>と違ってこちらは Edit with Emacs という名前の通りEmacs専用という感じです。<br />
Emacs側で、サーバーを立てて接続を待ち受けるという方式なので、専用のelispを読み込ませておく必要があります。<br />
いつものパターンなのですが、ChromeからEmacsを呼び出したときは、フォーカスをEmacsに遷移、そして編集が終わればまたChromeにフォーカスを自動で戻したいところ。<br />
StumpWMならば、シェルからコマンドを実行できる仕組みがあるので、これでフォーカスの遷移に対応してみました。<br />
<pre>
(progn
  (require 'edit-server)

  (setq edit-server-new-frame nil)

  (unless edit-server-new-frame
    (add-hook 'edit-server-done-hook
              (lambda ()
                (start-process &quot;-&gt;chrome&quot; nil &quot;stumpish&quot; &quot;chrome&quot;))))
      
  (add-hook 'edit-server-start-hook
            (lambda ()
              (start-process &quot;-&gt;emacs&quot; nil &quot;stumpish&quot; &quot;emacs&quot;)))
  
  (edit-server-start) )
</pre>
Edit with Emacsと連携させる、edit-server.elですが、フックを掛けられるように作り込まれていて、楽に拡張ができます。この辺りに地味に感心しました。
■
"
 :AUTHOR "chiba" :DATE 3494311198 :CATEGORY "Emacs")
(:PATH "/3494884263" :TITLE "Ruby で Picasa" :BODY
 "<p class=\"first\">こんにちは!! tahara です。
Ruby で Picasa の API をたたいてみました。</p>

<p>OAuth でアクセスできる素敵なライブラリをうまく見つけることができなかったので、
<a href=\"http://code.google.com/intl/ja/apis/gdata/articles/gdata_on_rails.html\">Google Data Ruby Utility Library</a> を使って地味に作りました。</p>

<p><a href=\"http://code.google.com/intl/ja/apis/picasaweb/docs/2.0/developers_guide_protocol.html\">Developer's Guide: Protocol  - Picasa Web Albums Data API - Google Code</a>
を参照しながらの試行錯誤だったので、いまいち自信ありません。</p>

<pre class=\"src\">
<span style=\"color: #ff7f24;\"># </span><span style=\"color: #ff7f24;\">-*- coding: utf-8 -*-
</span>require <span style=\"color: #ffa07a;\">'oauth/client/net_http'</span>

<span style=\"color: #00ffff;\">module</span> <span style=\"color: #98fb98;\">Actindi</span>
  <span style=\"color: #00ffff;\">class</span> <span style=\"color: #98fb98;\">Picasa</span>

    <span style=\"color: #98fb98;\">SITE</span> = <span style=\"color: #ffa07a;\">\"http://photos.googleapis.com\"</span>
    <span style=\"color: #98fb98;\">CONSUMER_KEY</span> = <span style=\"color: #ffa07a;\">\"xxxxxxxxx\"</span>
    <span style=\"color: #98fb98;\">CONSUMER_SECRET</span> = <span style=\"color: #ffa07a;\">\"xxxxxxxxxxx\"</span>

    <span style=\"color: #98fb98;\">PUBLIC_ALBUM</span>  = <span style=\"color: #ffa07a;\">\"公開アルバム\"</span>
    <span style=\"color: #98fb98;\">PRIVATE_ALBUM</span> = <span style=\"color: #ffa07a;\">\"プライベートアルバム\"</span>
    <span style=\"color: #98fb98;\">ALBUM_ACCESS_PUBLIC</span> = <span style=\"color: #ffa07a;\">\"public\"</span>
    <span style=\"color: #98fb98;\">ALBUM_ACCESS_PROTECTED</span> = <span style=\"color: #ffa07a;\">\"protected\"</span>

    <span style=\"color: #00ffff;\">def</span> <span style=\"color: #87cefa;\">initialize</span>(token, secret)
      consumer = <span style=\"color: #98fb98;\">OAuth</span>::<span style=\"color: #98fb98;\">Consumer</span>.new <span style=\"color: #98fb98;\">CONSUMER_KEY</span>, <span style=\"color: #98fb98;\">CONSUMER_SECRET</span>, {
        <span style=\"color: #7fffd4;\">:site</span>             =&gt; <span style=\"color: #98fb98;\">SITE</span>,
        <span style=\"color: #7fffd4;\">:signature_method</span> =&gt; <span style=\"color: #ffa07a;\">'HMAC-SHA1'</span>,
        <span style=\"color: #7fffd4;\">:token</span>            =&gt; <span style=\"color: #98fb98;\">OAuth</span>::<span style=\"color: #98fb98;\">Token</span>.new(token, secret)
      }
      <span style=\"color: #eedd82;\">@picasa</span> = <span style=\"color: #98fb98;\">GData</span>::<span style=\"color: #98fb98;\">Client</span>::<span style=\"color: #98fb98;\">Photos</span>.new(<span style=\"color: #7fffd4;\">:http_service</span> =&gt; <span style=\"color: #98fb98;\">GData</span>::<span style=\"color: #98fb98;\">HTTP</span>::<span style=\"color: #98fb98;\">OAuthService</span>.new(consumer))
    <span style=\"color: #00ffff;\">end</span>

    <span style=\"color: #00ffff;\">def</span> <span style=\"color: #87cefa;\">ensure_albums</span>
      <span style=\"color: #00ffff;\">return</span> <span style=\"color: #00ffff;\">if</span> <span style=\"color: #eedd82;\">@public_album</span> &amp;&amp; <span style=\"color: #eedd82;\">@private_album</span>

      feed = <span style=\"color: #eedd82;\">@picasa</span>.get(<span style=\"color: #ffa07a;\">\"</span><span style=\"color: #eedd82;\">#{SITE}</span><span style=\"color: #ffa07a;\">/data/feed/api/user/default\"</span>).to_xml
      feed.elements.each(<span style=\"color: #ffa07a;\">\"entry\"</span>) <span style=\"color: #00ffff;\">do</span> |entry|
        title = entry.elements[<span style=\"color: #ffa07a;\">\"title\"</span>].text
        puts title
        <span style=\"color: #00ffff;\">if</span> title == <span style=\"color: #98fb98;\">PUBLIC_ALBUM</span>
          <span style=\"color: #eedd82;\">@public_album</span> = entry
        <span style=\"color: #00ffff;\">elsif</span> title == <span style=\"color: #98fb98;\">PRIVATE_ALBUM</span>
          <span style=\"color: #eedd82;\">@private_album</span> = entry
        <span style=\"color: #00ffff;\">end</span>
      <span style=\"color: #00ffff;\">end</span>
      <span style=\"color: #00ffff;\">return</span> <span style=\"color: #00ffff;\">if</span> <span style=\"color: #eedd82;\">@public_album</span> &amp;&amp; <span style=\"color: #eedd82;\">@private_album</span>
      <span style=\"color: #00ffff;\">unless</span> <span style=\"color: #eedd82;\">@public_album</span>
        <span style=\"color: #eedd82;\">@public_album</span> = create_album(<span style=\"color: #98fb98;\">PUBLIC_ALBUM</span>, <span style=\"color: #ffa07a;\">\"public\"</span>)
      <span style=\"color: #00ffff;\">end</span>
      <span style=\"color: #00ffff;\">unless</span> <span style=\"color: #eedd82;\">@private_album</span>
        <span style=\"color: #eedd82;\">@private_album</span> = create_album(<span style=\"color: #98fb98;\">PRIVATE_ALBUM</span>, <span style=\"color: #ffa07a;\">\"protected\"</span>)
      <span style=\"color: #00ffff;\">end</span>
      ensure_albums
    <span style=\"color: #00ffff;\">end</span>

    <span style=\"color: #00ffff;\">def</span> <span style=\"color: #87cefa;\">user_data</span>
      feed = <span style=\"color: #eedd82;\">@picasa</span>.get(<span style=\"color: #ffa07a;\">\"</span><span style=\"color: #eedd82;\">#{SITE}</span><span style=\"color: #ffa07a;\">/data/entry/api/user/default\"</span>).to_xml
      puts feed
      feed
    <span style=\"color: #00ffff;\">end</span>

    <span style=\"color: #00ffff;\">def</span> <span style=\"color: #87cefa;\">create_album</span>(title, access)
      entry = <span style=\"color: #ffa07a;\">&lt;&lt;ENTRY
&lt;entry xmlns='http://www.w3.org/2005/Atom'
       xmlns:media='http://search.yahoo.com/mrss/'
       xmlns:gphoto='http://schemas.google.com/photos/2007'&gt;
  &lt;title type='text'&gt;</span><span style=\"color: #eedd82;\">#{title}</span><span style=\"color: #ffa07a;\">&lt;/title&gt;
  &lt;summary type='text'&gt;あるばむぅ&lt;/summary&gt;
  &lt;gphoto:access&gt;</span><span style=\"color: #eedd82;\">#{access}</span><span style=\"color: #ffa07a;\">&lt;/gphoto:access&gt;
  &lt;category scheme='http://schemas.google.com/g/2005#kind'
    term='http://schemas.google.com/photos/2007#album'&gt;&lt;/category&gt;
&lt;/entry&gt;
ENTRY</span>
      <span style=\"color: #eedd82;\">@picasa</span>.headers = {}
      feed = <span style=\"color: #eedd82;\">@picasa</span>.post(<span style=\"color: #ffa07a;\">\"</span><span style=\"color: #eedd82;\">#{SITE}</span><span style=\"color: #ffa07a;\">/data/feed/api/user/default\"</span>, entry).to_xml
      feed
    <span style=\"color: #00ffff;\">end</span>

    <span style=\"color: #00ffff;\">def</span> <span style=\"color: #87cefa;\">post_photo</span>(title, summary, photo_file_path, mime_type, access)
      album_id = album_id_from_access(access)
      entry = <span style=\"color: #ffa07a;\">&lt;&lt;ENTRY
&lt;entry xmlns='http://www.w3.org/2005/Atom'&gt;
  &lt;title&gt;</span><span style=\"color: #eedd82;\">#{title}</span><span style=\"color: #ffa07a;\">&lt;/title&gt;
  &lt;summary&gt;</span><span style=\"color: #eedd82;\">#{summary}</span><span style=\"color: #ffa07a;\">&lt;/summary&gt;
  &lt;category scheme=\"http://schemas.google.com/g/2005#kind\"
    term=\"http://schemas.google.com/photos/2007#photo\"/&gt;
&lt;/entry&gt;
ENTRY</span>
      url = <span style=\"color: #ffa07a;\">\"</span><span style=\"color: #eedd82;\">#{SITE}</span><span style=\"color: #ffa07a;\">/data/feed/api/user/default/albumid/</span><span style=\"color: #eedd82;\">#{album_id}</span><span style=\"color: #ffa07a;\">\"</span>
      puts url
      puts entry
      <span style=\"color: #eedd82;\">@picasa</span>.headers = {}
      feed = <span style=\"color: #eedd82;\">@picasa</span>.post_file(url,
                               photo_file_path,
                               mime_type,
                               entry).to_xml
      puts feed
      feed.elements[<span style=\"color: #ffa07a;\">\"link[@rel='edit']\"</span>].attributes[<span style=\"color: #ffa07a;\">'href'</span>]
    <span style=\"color: #00ffff;\">end</span>

    <span style=\"color: #00ffff;\">def</span> <span style=\"color: #87cefa;\">delete_photo</span>(feed)
      <span style=\"color: #eedd82;\">@picasa</span>.headers = {}
      <span style=\"color: #eedd82;\">@picasa</span>.delete(feed)
    <span style=\"color: #00ffff;\">end</span>

    <span style=\"color: #00ffff;\">def</span> <span style=\"color: #87cefa;\">change_album</span>(feed_url, access)
      album_id = album_id_from_access(access)
      <span style=\"color: #eedd82;\">@picasa</span>.headers = {}
      entry = <span style=\"color: #eedd82;\">@picasa</span>.get(feed_url).to_xml
      entry.elements[<span style=\"color: #ffa07a;\">\"gphoto:albumid\"</span>].text = album_id
      edit_url = entry.elements[<span style=\"color: #ffa07a;\">\"link[@rel='edit']\"</span>].attributes[<span style=\"color: #ffa07a;\">'href'</span>]
      <span style=\"color: #eedd82;\">@picasa</span>.headers = {}
      feed = <span style=\"color: #eedd82;\">@picasa</span>.put(edit_url, entry.to_s).to_xml
      feed.elements[<span style=\"color: #ffa07a;\">\"link[@rel='edit']\"</span>].attributes[<span style=\"color: #ffa07a;\">'href'</span>]
    <span style=\"color: #00ffff;\">end</span>

    <span style=\"color: #00ffff;\">def</span> <span style=\"color: #87cefa;\">album_id_from_access</span>(access)
      ensure_albums
      url = <span style=\"color: #00ffff;\">if</span> access == <span style=\"color: #98fb98;\">ALBUM_ACCESS_PUBLIC</span>
              <span style=\"color: #eedd82;\">@public_album</span>.elements[<span style=\"color: #ffa07a;\">\"id\"</span>].text
            <span style=\"color: #00ffff;\">else</span>
              <span style=\"color: #eedd82;\">@private_album</span>.elements[<span style=\"color: #ffa07a;\">\"id\"</span>].text
            <span style=\"color: #00ffff;\">end</span>
      url =~ <span style=\"color: #ffa07a;\">/([^\\/]+$)/</span>
      <span style=\"color: #eedd82;\">$1</span>
    <span style=\"color: #00ffff;\">end</span>

    <span style=\"color: #00ffff;\">class</span> &lt;&lt; <span style=\"color: #eedd82;\">self</span>
      <span style=\"color: #00ffff;\">def</span> <span style=\"color: #87cefa;\">example</span>
        token = <span style=\"color: #ffa07a;\">\"access token\"</span>
        secret = <span style=\"color: #ffa07a;\">\"access token secret\"</span>
        picasa = <span style=\"color: #98fb98;\">Actindi</span>::<span style=\"color: #98fb98;\">Picasa</span>.new(token, secret)
        feed = picasa.post_photo(<span style=\"color: #ffa07a;\">\"題名\"</span>, <span style=\"color: #ffa07a;\">\"サマリー\"</span>, <span style=\"color: #ffa07a;\">\"/tmp/aaa.jpg\"</span>, <span style=\"color: #ffa07a;\">\"image/jpeg\"</span>, <span style=\"color: #98fb98;\">Actindi</span>::<span style=\"color: #98fb98;\">Picasa</span>::<span style=\"color: #98fb98;\">ALBUM_ACCESS_PUBLIC</span>)
      <span style=\"color: #00ffff;\">end</span>
    <span style=\"color: #00ffff;\">end</span>
  <span style=\"color: #00ffff;\">end</span>

<span style=\"color: #00ffff;\">end</span>

<span style=\"color: #00ffff;\">module</span> <span style=\"color: #98fb98;\">GData</span>
  <span style=\"color: #00ffff;\">module</span> <span style=\"color: #98fb98;\">HTTP</span>
    <span style=\"color: #00ffff;\">class</span> <span style=\"color: #98fb98;\">OAuthService</span>

      <span style=\"color: #00ffff;\">def</span> <span style=\"color: #87cefa;\">initialize</span>(consumer)
        <span style=\"color: #eedd82;\">@consumer</span> = consumer
      <span style=\"color: #00ffff;\">end</span>

      <span style=\"color: #00ffff;\">def</span> <span style=\"color: #87cefa;\">new</span>
        <span style=\"color: #eedd82;\">self</span>
      <span style=\"color: #00ffff;\">end</span>

      <span style=\"color: #ff7f24;\"># </span><span style=\"color: #ff7f24;\">Take a GData::HTTP::Request, execute the request, and return a
</span>      <span style=\"color: #ff7f24;\"># </span><span style=\"color: #ff7f24;\">GData::HTTP::Response object.
</span>      <span style=\"color: #00ffff;\">def</span> <span style=\"color: #87cefa;\">make_request</span>(request)
        url = <span style=\"color: #98fb98;\">URI</span>.parse(request.url)
        http = <span style=\"color: #98fb98;\">Net</span>::<span style=\"color: #98fb98;\">HTTP</span>.new(url.host, url.port)
        http.use_ssl = (url.scheme == <span style=\"color: #ffa07a;\">'https'</span>)
        http.verify_mode = <span style=\"color: #98fb98;\">OpenSSL</span>::<span style=\"color: #98fb98;\">SSL</span>::<span style=\"color: #98fb98;\">VERIFY_NONE</span>

        <span style=\"color: #00ffff;\">case</span> request.method
        <span style=\"color: #00ffff;\">when</span> <span style=\"color: #7fffd4;\">:get</span>
          req = <span style=\"color: #98fb98;\">Net</span>::<span style=\"color: #98fb98;\">HTTP</span>::<span style=\"color: #98fb98;\">Get</span>.new(url.request_uri)
        <span style=\"color: #00ffff;\">when</span> <span style=\"color: #7fffd4;\">:put</span>
          req = <span style=\"color: #98fb98;\">Net</span>::<span style=\"color: #98fb98;\">HTTP</span>::<span style=\"color: #98fb98;\">Put</span>.new(url.request_uri)
        <span style=\"color: #00ffff;\">when</span> <span style=\"color: #7fffd4;\">:post</span>
          req = <span style=\"color: #98fb98;\">Net</span>::<span style=\"color: #98fb98;\">HTTP</span>::<span style=\"color: #98fb98;\">Post</span>.new(url.request_uri)
        <span style=\"color: #00ffff;\">when</span> <span style=\"color: #7fffd4;\">:delete</span>
          req = <span style=\"color: #98fb98;\">Net</span>::<span style=\"color: #98fb98;\">HTTP</span>::<span style=\"color: #98fb98;\">Delete</span>.new(url.request_uri)
        <span style=\"color: #00ffff;\">else</span>
          <span style=\"color: #00ffff;\">raise</span> <span style=\"color: #98fb98;\">ArgumentError</span>, <span style=\"color: #ffa07a;\">\"Unsupported HTTP method specified.\"</span>
        <span style=\"color: #00ffff;\">end</span>

        <span style=\"color: #00ffff;\">case</span> request.body
        <span style=\"color: #00ffff;\">when</span> <span style=\"color: #98fb98;\">String</span>
          req.body = request.body
        <span style=\"color: #00ffff;\">when</span> <span style=\"color: #98fb98;\">Hash</span>
          req.set_form_data(request.body)
        <span style=\"color: #00ffff;\">when</span> <span style=\"color: #98fb98;\">File</span>
          req.body_stream = request.body
          request.chunked = <span style=\"color: #eedd82;\">true</span>
        <span style=\"color: #00ffff;\">when</span> <span style=\"color: #98fb98;\">GData</span>::<span style=\"color: #98fb98;\">HTTP</span>::<span style=\"color: #98fb98;\">MimeBody</span>
           req.body_stream = request.body
          request.chunked = <span style=\"color: #eedd82;\">true</span>
        <span style=\"color: #00ffff;\">else</span>
          req.body = request.body.to_s
        <span style=\"color: #00ffff;\">end</span>

        request.headers.each <span style=\"color: #00ffff;\">do</span> |key, value|
          req[key] = value
        <span style=\"color: #00ffff;\">end</span>

        request.calculate_length!

        <span style=\"color: #eedd82;\">@consumer</span>.sign!(req)
        res = http.request(req)

        response = <span style=\"color: #98fb98;\">Response</span>.new
        response.body = res.body
        response.headers = <span style=\"color: #98fb98;\">Hash</span>.new
        res.each <span style=\"color: #00ffff;\">do</span> |key, value|
          response.headers[key] = value
        <span style=\"color: #00ffff;\">end</span>
        response.status_code = res.code.to_i
        <span style=\"color: #00ffff;\">return</span> response
      <span style=\"color: #00ffff;\">end</span>
    <span style=\"color: #00ffff;\">end</span>
  <span style=\"color: #00ffff;\">end</span>
<span style=\"color: #00ffff;\">end</span>
</pre>
"
 :AUTHOR "tahara" :DATE 3494884263 :CATEGORY "Picasa")
(:PATH "/3495166383" :TITLE "使い捨てなコマンドを作っては捨て" :BODY "こんにちは、chibaです!<br />
本当にネタ切れなので、どうでも良いレベルのEmacsの日々を書きます。<br />
emacsのVCモードでは、gitが使えるのですが、git pushはしてくれないらしく、これだけシェルで実行していたりしました。<br />
いやいやこれでは、いけないということで、コマンドを作成。<br />
default-directoryにパスを束縛すれば、そのディレクトリで実行される様子(この辺あまり良く分かっていないのですが…)<br />
ちなみに、無駄にマクロにしています。コマンド名にはスペースも使えるようなので、LispWorksのエディタみたいなコマンド名にできるようなマクロです。<br />
anything.elで絞り込むのでこういう名前でも問題ないみたいですね。
<pre>
(defmacro defcommand (name lambda-list &rest forms)
  (let* ((lambda-list (copy-list lambda-list))
         (iarg (getf lambda-list '&interactive)))
    `(progn
       (defun ,(intern name) ,(progn (remf lambda-list '&interactive) lambda-list)
         (interactive ,iarg)
         ,@forms)
       ,name)))

(defcommand &quot;Git Push&quot; ()
  (let ((default-directory (file-name-directory (buffer-file-name))))
    (shell-command &quot;git push&quot;) ))
</pre>
■
"
 :AUTHOR "chiba" :DATE 3495166383 :CATEGORY "Emacs")
(:PATH "/3496350603" :TITLE "4つ単位で増加するuniversal-argumentで大丈夫か" :BODY
 "こんにちは、chibaです!<br />
ネタ切れなので、どうでも良い感じのEmacsの日々を書きます。<br />

Emacsのユーザーには、お馴染の数引数を入力するC-uですが、デフォルトだと(* 4)な感じで増加していきます。<br />
<pre>
================================================================
</pre>
は、C-u C-u C-u =の様に入力したりしていますが、自分は便利だなと思うのはこれ位です。<br />
どちらかというと一個ずつ増加していった方が便利なのではないだろうか、ということで、オリジナルのコードを改造して作ってみました。<br />
C-uと置き換えてみても良かったのですが、super+uということにしてみましたが、どんな感じなのかしばらく様子を見てみたいと思います。<br />
<pre>
(defun universal-argument-1+ ()
  (interactive)
  (setq prefix-arg (list 1))
  (setq universal-argument-num-events (length (this-command-keys)))
  (ensure-overriding-map-is-bound))

(defun universal-argument-1+-more (arg)
  (interactive &quot;P&quot;)
  (cond ((consp arg)
         (setq prefix-arg 
               (list (if (minusp (car arg))
                         (1- (car arg))
                         (1+ (car arg))))))
        ((eq arg '-)
         (setq prefix-arg (list -1)))
        ('T (setq prefix-arg arg)
            (restore-overriding-map)))
  (setq universal-argument-num-events (length (this-command-keys))))

(define-key global-map [(super u)]
  'universal-argument-1+)

(define-key universal-argument-map [(super u)]
  'universal-argument-1+-more)
</pre>
■
"
 :AUTHOR "chiba" :DATE 3496350603 :CATEGORY "Emacs")
(:PATH "/3496352822" :TITLE "Cimy Swift SMTP + Contact Form 7でJISのメールが送れない"
 :BODY "こんにちは、chibaです!<br />
ネタ切れなので、問題の本質的な解決がされてないネタを書きます。<br />
タイトルの通りなのですが、Cimy Swift SMTP + Contact Form 7でJISのメールを送ろうと設定していましたが、WP Multibyte Patchの設定をJISにしてもさっぱりJISでメールが送信されません。<br />
何かがどこかで競合しているのかと思い、プラグインを削除していきましたが、Cimy Swift SMTPを抜いたところJISの設定が効くようになりました。<br />
今回の場合は、そもそもCimy Swift SMTPは必要なかったので削除してしまうことにしましたが、今後どうしても必要になった際には調べてみたいと思います。<br />
■
"
 :AUTHOR "chiba" :DATE 3496352822 :CATEGORY "WordPress")
(:PATH "/3497068356" :TITLE "Emacsで直前で閉じたバッファをまた開きたい" :BODY
 "こんにちは、chibaです!<br />
Firefoxを使っていると良くお世話になるre-open tab(Ctrl+Shift+T)ですが、Emacsでも欲しくなりました。<br />
ということで早速作ってみましたが、バッファをそのまま復元するというのは分からなかったので、前回閉じたファイルだけ復活できるというバージョンで。<br />
バッファを復元できる方法が分かれば、それを試してみたいですね。
<pre>
;; utils
(defmacro aif (test then &optional else)
  `(let ((it ,test))
     (if it
         ,then
         ,else)))

(defmacro awhen (test &rest body)
  `(aif ,test
        (progn
          ,@body)))

(progn
  ;; re-open-file
  (defvar *recent-buffers*)
  (setq *recent-buffers* () )
  
  (defadvice kill-buffer (before kill-buffer-before activate)
    (awhen buffer-file-name
      (push it *recent-buffers*)))
  ;; (ad-deactivate 'kill-buffer) 
  
  (defun re-open-file ()
    (interactive)
    (aif *recent-buffers*
         (find-file (pop it))
         (message &quot;null&quot;)))
  
  (define-key global-map [(control x) (shift ?k)]
    're-open-file) )
</pre>
■
"
 :AUTHOR "chiba" :DATE 3497068356 :CATEGORY "Emacs")
(:PATH "/3497845828" :TITLE "elispを書き散らかすあばれん坊M-x doctor" :BODY
 "こんにちは、Chibaです!<br />
ネタが無さ過ぎるのでぼんやり考えたEmacs小ネタで行きます!<br />
<h3>Emacsの初期化を細かく関数に分ける</h3>
<p>
そのままな内容ですが、初期化するコード片を追加する度に関数にして書き散らし、大本の.emacsから呼ぶようにします。<br />
具体的には、<br />
<pre>
(defun setup>grep ()
  (require 'grep-edit)
  (setq grep-find-command \"/usr/local/bin/ack --nocolor --nogroup \"))
</pre>
という風に定義し、.emacsから、(setup>grep)のように呼ぶという風。<br />
なんのメリットもなさそうですが、find-function-at-pointで定義先に飛べるので、気儘に書き散らかしても、一発でジャンプできます(要バイトコンパイル)。<br />
これで書き散らかしても安心。もっと書き散らかしたい!<br />
</p>
<h3>バッファのファイル名をキルリングに入れる</h3>
<p>
これまた、そのままな内容ですが、編集しているバッファのファイル名をタスクのチケット等に貼りたことが多いので、<br />
<pre>
(defun kill-new-current-bufffer-file-name ()
  (interactive)
  (kill-new (buffer-file-name)))
</pre>
こういう風なものを作ってみました。地味に便利です。<br />
以上、小ネタ2つでした。<br />
</p>
■
"
 :AUTHOR "chiba" :DATE 3497845828 :CATEGORY "Emacs")
(:PATH "/3498364635" :TITLE "コッカを移動する" :BODY "こんにちは、Chibaです!<br />
今日もネタが無さ過ぎるのでぼんやり考えたEmacs小ネタで行きます!<br />
自分は、括弧は先に対で入力する派なのですが、先に入力するとコッカの方を後ろに移動したり前に持って行きたくなったりします。<br />
具体的には、
<pre>
(a) b c d e f
</pre>
を、
<pre>
(a b c d e f)
</pre>
にしたくなったりするわけですね。
<br />
これは良いブログネタ!ということで早速作ってみました。
<pre>
(define-key global-map [(control meta shift ?f)]
  (defun forward-thesis (arg)
    (interactive &quot;p&quot;)
    (when (string= &quot;)&quot; (thing-at-point 'char))
      (delete-char 1)
      (forward-sexp arg)
      (insert &quot;)&quot;)
      (backward-char))))

(define-key global-map [(control meta shift ?b)]
  (defun backward-thesis (arg)
    (interactive &quot;p&quot;)
    (when (string= &quot;)&quot; (thing-at-point 'char))
      (delete-char 1)
      (backward-sexp arg)
      (backward-char)
      (insert &quot;)&quot;)
      (backward-char))))
</pre>
ちょっと妙な動きもしますが、使えるようであればちゃんとしたものに作り直そうかなと思っています。
<br />
ちなみに、thesisという名前は、paren/thesisに分ける呼び方があるようなので、これから取りました。
<br />
》<a href=\"http://www.jargon.net/jargonfile/a/ASCII.html\">jargon, node: ASCII</a>
<br />
■

"
 :AUTHOR "chiba" :DATE 3498364635 :CATEGORY "Emacs")
(:PATH "/3498443215" :TITLE "なんでもbrowse-url-at-point" :BODY
 "こんにちは、Chibaです!<br />
ネタ切れなので、ちょっとした自前便利Emacs lispの紹介です!<br />
browse-url-at-pointとは、ポイント位置にURLの文字があれば、それをブラウザで開くというものです。
このbrowse-url-at-pointで使われている、thing-at-pointという関数が肝なのですが、この関数は、ポイント(カーソル)がある場所のオブジェクトを取得できるというEmacsの関数です。
<br />
この関数なのですが使い方次第では非常に便利です。
<br />
browse-url-at-pointでは、URLが決め打ちですが、thing-at-point(ポイント位置のオブジェクトを取得)とbrowse-url(ブラウザで開く)を組み合せることによって似たようなものを簡単に作成することができます。
<br />
例えば、ポイント位置のRedmineのチケット(#1234というような形式)を開きたい場合は、色々手抜きですが、
<pre>
(defun show-ticket-at-point ()
  (interactive)
  (browse-url (format &quot;https://example.com/issues/show/%s&quot;
                      (thing-at-point 'word))))
</pre>
のように書けると思います。
<br />
簡単な割には便利ですので、エディタ上の情報からブラウザで何か開きたいと思った時には、工夫して色々作成してみてはいかがでしょう。
<br />
■
"
 :AUTHOR "chiba" :DATE 3498443215 :CATEGORY "Emacs")
)
