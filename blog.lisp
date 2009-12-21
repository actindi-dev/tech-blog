(in-package :tech.actindi.net)

;; 1
(let ((date (encode-universal-time 0 0 0 21 2 2009)))
  (defentry (format nil "/~A" date)
      (:title "ブログはじめました"
              :author "komagata"
              :date date
              :category "システム管理")
    "はじめまして。komagataと申します。" :br 
    "先日、アクトインディ株式会社のシステムの担当になったのでこのブログを作ってみました。":br 
    "小さくてくだらない作業までこのブログに書いていこうと思うので、「ベンチャーのシステム担当あるある」":br 
    "みたいな感じで見ていただければ・・・なとと考えています。":br 
    "現状、僕とアルバイトのsakurabaの二人でネットワークと開発（要するにパソコン関係全部）を担当しています。":br 
    "僕自身、ネットワークの知識がイマイチなところもあり、「そこはこうすべきだろう、常識的に考えて・・・」":br 
    "などというところがあれば教えていただきたいな、という面もあります。":br 
    "なにはともあれ、よろしくお願いします。"))

;; 2
(let ((date (encode-universal-time 0 0 12 21 2 2009)))
  (defentry (format nil "/~A" date)
      (:title "迫る引越し"
              :author "komagata"
              :date date
              :category "システム管理")
    "komagataです。"
    :br
    "何で今急いでブログを作ったかというと、会社が明日引越しだからです。"
    :br
    "明日かよ！とお思いかもしれませんが、時は無常にも過ぎ去り、明日です。"
    :br
    "まずは、引越し先に電話回線(FAX)・Bフレッツ回線・プロバイダを用意しました。"
    :br
    "お客様のサービスのようなクリティカルなものは社内に無いので、自社サービスがひとつ乗っかっているサーバー１台だけを先に人力（チャリと人手）で運んで繋いできました。（昨日）"
    :br
    "それ以外は止めても大丈夫なので荷造りして引越し屋さんにまかせます。"
    :br
    "自分のブログで"
    ((:a :|href| "http://docs.komagata.org/4017")
     "ITベンチャー勝ち組セット")
    "などというエントリーを書きましたが、その通りの"
    ((:a :|href| "http://www.interlink.or.jp/service/flets/b/price.html")
     "INTERLINKの固定IP8個のやつ")
    "を契約しました。"
    :br
    "カードがあればその場で使えるようになるのは助かりますね。"
    :br
    "引越し先はBフレッツのマンションタイプが元々あったのでVDSLモデムが届きました。"
    :br
    "無線LANルータは"
    ((:a :|href| "http://corega.jp/prod/wlbargpxw/")"COREGA CG-WLBARGPXW")
    "を買いました。"
    :br
    "おいおい、こんなので大丈夫か？と思うかもしれませんが、このルーター使ったことあるので大丈夫なんじゃないかなと楽観的に考えています。"
    :br
    "固定IPを使うにはルータにUnnumbered IPという機能が必須だそうで、買うときに気をつけたいポイントです。"
    :br
    "使ったことあるルータなので、特に問題無く、無線LANと固定IPでサーバ一個（Debian etch）設定できました。"
    :br
    "/etc/network/interfaces を新しいIPに変えて、DNSを変更しただけです。"
    :br
    "無線LANはWPA2, AESでパスワードかけましたが、アクセスポイント自体を隠す設定にするかどうかちょっと悩んで隠さないことにしました。（エンジニアでない人はクライアントの設定で混乱するかと思いまして・・・）"
    "これはどっちがいいでしょうか。みなさんどうしてますか？"
    :br
    "引越し後の通常社員初出社は明後日で、引越し屋さんが運び込むのは明日です。"
    :br
    "明日中に全クライアント向けの配線や設定を済ませてこようと思います。"))

;; 3
(defentry-ut (2009 2 22 0 0 0) 
    (:title "1人体制での死活監視"
            :author "komagata"
            :category "システム管理")
  ((:a :|href| "http://q.hatena.ne.jp/1230133898") "一定規模以上のWebサイトを運営しているエンジニアの方、業務時間外の障害対応ってどういう風にやっていますか？ ルールとか体制とかを中心に教えてほしいです。 ちなみに.. – 人力検索はてな") :br
  (:blockquote 
   "    ちなみにぼくの会社では、監視ツールや自作監視スクリプトでアラートをエンジニア社員全員に送って、誰かが対応することになっています。（たまに誰も対応やレスをしなくて上司に怒られます）
    これはぼくら社員にとって正直ストレスになるので、なにかよいルールや体制を上司に提案したいなと考えています。") 
  "はてなでこういう質問がありました。たしかに大きいところではストレスになりますよね。"
  "うちは「一定規模以上のWebサイトを運営してい」ないので特にストレスは感じないです。（アラート受ける人も2人しかいないし・・・）" :br
  "Montasticという無料でWebのステータスをチェックしてアラートを送ってくれるサービスを使っています。" :br
  "これだとHTTPしかチェックしてくれないのでライブドアのDATAHOTEL PATROLというやつも試してみたいところです。" :br
  "それとRailsのExceptionNotifierプラグインのみです。" :br
  "社内に監視システムを構築するとその監視システム自体の維持が大変なのでやってません。" :br
  "品質とのトレードオフだと思いますが、基本的に、" :br
  "「人員1人体制想定でどこまで品質を高められるか」" :br
  "という方向でがんばってみたいと思います。")

;; 4
(defentry (format nil "/~A" (encode-universal-time 0 0 0 25 2 2009))
    (:title "オフィスの引越し（プロバイダー編）"
            :author "komagata"
            :category "システム管理"
            :date (encode-universal-time 0 0 0 25 2 2009))
  "komagataです。" :br
  "五反田から五反田へオフィス引越しました。" :br
  "システム管理者にとっては何かと大変なオフィスの引越しですが、僕は担当することになったばかりなので全体を把握する丁度良い機会になりました。" :br
  "予告通り、プロバイダーはインターリンクの固定IP8個にしました。" :br
  "社内にクリティカルなサーバは無いんですが、IPも振り直しです。" :br
  "/etc/network/intarfaces を変更して安心してたら、Apacheの443番ポートのバーチャルホストの設定のところに固定IPを書いていたのを忘れてました・・・。" :br
  (:strike "それと、インターリンクはOP25Bしていることを忘れていて、") :br
  "（25番で大丈夫でした。）" :br
  "「そういやRedmineのチケット関連のメールが来てないな・・・」" :br
  "などと思っていました。" :br
  "慌ててPostfixをSubmissionポートを使う設定に変えました。" :br
  (:strike "会社で25番を絶対使いたい場合は別のプロバイダをお考えください。") :br
  "参照：" ((:a :|href| "http://docs.komagata.org/3983") "Postfix – Submissionポートで通信 – p0t")
  )

;; 5
(defentry-ut (2009 2 25 12 0 0)
    (:title "ベンチャーでのおすすめアンチウィルスソフト"
            :author "komagata"
            :category "システム管理")
  "komagataです。" :br
  "以前、はじめてベンチャーのシステム管理を担当したときは、張り切っていて、サーバー集中管理型のアンチウィルスソフトの見積もりを取ったりしていたんですが、今回は、「フリーでいいの無いかな？」という、ゆるふわ系です。" :br
  "人数が10人程度なのでディレクトリサービスとか、そこまでやらなくてもいいかなと思っています。（以前は10人未満の会社でActive Directoryを使ってましたが、もう設定とか思い出せません）個人ではアンチウィルスソフトは" ((:a :|href| "http://www.avgjapan.com/") "AVG") "を使っていて、非常に気に入っていたんですが、商用利用は有料なのでGPLの"
  ((:a :|href| "http://www.clamwin.com/") "ClamWin")
  "を試してみました。" :br
  "日本語化パッチも公開されていて、定義ファイルのダウンロードやスキャンのスケジュール設定も簡単にでき、予想以上に「使える！」といった感じでした。" :br
  "会社でも導入を進めて行きたいと思います。")

;; 6
(defentry-ut (2009 3 5 0 0 0)
    (:title "sakuraba引退記念"
            :author "komagata"
            :category "卒業")
  "komagataです。" :br
  "最初から予定されていたことですが、２月末で、中米の荒くれ者ことsakurabaがアルバイトを完了しました。" :br
  "沖縄料理屋で送別会をやって、プレゼントを贈りました。" :br
  "sakurabaはMac信者なのでMighty Mouseでも送ればちょっとうれしいのは目に見えていたので、一人おでんセットをプレゼントしました。（しかもMighty Mouseより無意味に高い）" :br
  "sakurabaは僕とmachidaさんに向かってとびっきりの呪いの言葉を吐きました。" :br
  "sakurabaはアルバイトできてから、RailsもLinuxのサーバー構築も自分でどんどん覚えてしまって、一人でできるようになってしまいました。" :br
  "いまでは僕が、「もっとテスト書いたほうがいいですよ」と怒られる始末。" :br
  "ボリビアにでも旅立ってしまうのかもしれませんが、これからのsakurabaの活躍を陰ながら応援しています。")

;; 7
(defentry-ut (2009 3 9 0 0 0)
    (:title "非常に重要なアプリケーションの導入" :author "komagata" :category "自由")
  "komagataです。" :br
  "先週末からchiba2009さんがエンジニアとして入ってくれました。" :br
  "chibaさんは一番得意な言語がCommon Lispという素敵な方です。" :br
  "ぜひ社内のシステムのそこここにCommon Lispを忍ばせてほしいです。" :br
  "そのchibaさんに今日、とても重要なアプリケーション教えてもらいました。" :br
  "それはvrmsです。" :br
  (:pre "% apt-cache search vrms
vrms - virtual Richard M. Stallman")
  "早速インストールして実行してみました。" :br
  (:pre "% vrms
                Non-free packages installed on dev

gdb-doc                   The GNU Debugger Documentation

  1 non-free packages, 0.2% of 503 installed packages.")
  "まずい！" :br
  "というかなんでgdbのドキュメントがnon-freeなんでしょうか。" :br
  (:pre "% sudo apt-get remove --purge gdb-doc
% vrms
No non-free packages installed on dev!  rms would be proud.")
  "これで安心。rmsもお喜びのようです。")

;; 8
(defentry-ut (2009 3 9 16 0 0)
    (:title "こんにちは、こんにちは" :author "chiba" :category "人")
  "こんにちは、先週の金曜からお世話になっております、chiba☆2009と申します。 「改善」という言葉は自分の一番好きな言葉で座右の銘としております。 世界をCommon Lisp色に改善してゆきたいと思っています!" :br
  "どうぞよろしくお願いします！！")

;; 9
(defentry-ut (2009 4 10 0 0 0) 
    (:title "掃除は大事" :author "chiba" :category "システム管理")
    "社内PCで突然電源がOFFになる不調なPCがあり、メモリチェック等色々対処してみたのですが、特に不具合は見付けられず、困っていました。" :br
    "稼働中のPCを触ってみたところかなり高温になっているという報告を受けたので、4月から新しい仲間になったmasuda氏が機転を効かせてPC内部を掃除したところ、ばっちりPCの温度が下がり、調子も良くなりました。" :br
    "どうも熱暴走でPCが落ちてしまっていたようです。" :br
    "基本ですが掃除は大事だなとあらためて思った一件です。")

;; 10
(defentry-ut (2009 7 29 10 0 0)
    (:title "テストエントリー" :author "chiba" :category "blog制作") 
  (:p "SBCLだと日本語が通らないので、無理矢理にマクロを通したり、文字列をバイト列に変換したり涙ぐましいのですが、もっと簡単な方法はないんでしょうか。"
      :br
      "根本的に直さないと駄目な気がしてきました。"
      "AllegroServeより良いのってどういうのがあるんでしょう。"))

;; 11
(defentry-ut (2009 7 29 11 0 0)
    (:title "Hunchentootにしたい" :author "chiba" :category "blog制作")
  (:p "色々面倒臭そうなのでHunchentootにしたくなってきました。" 
      "とはいえ、Hunchentootも使ったことがないのでなんとも言えません。"))

;; 12
(defentry-ut (2009 7 29 12 0 0)
    (:title "エントリーを後でどういう風に修正したら良いか"  :author "chiba" :category "blog制作")
  (:p "エントリーを後でどういう風に修正したら良いか"
      :br
      "めんどくさそうです。"))

;; 13
(defentry "/3458279064" (:title "CSSはウェブページの命" :author "chiba" :category "blog制作" :date 3458279064)
  "駄目なページでもスタイルシートを当てるとそれなりに見えるのは不思議ですね。" )

;; 14
(defentry "/3458280064" (:title "エントリーを後でどういう風に修正したら良いか" :author "chiba" :category "blog制作" :date 3458280064)
  (:p "エントリーを後でどういう風に修正したら良いか"
      (:br)
      "めんどくさそうです。"))

;; 15
(defentry "/3458279537" (:title "URLを毎度決めている" :date 3458279537  :author "chiba" :category "blog制作")
  "今のところURLを毎回決めていますが、これに"((:a :href "http://www.lispworks.com/documentation/HyperSpec/Body/f_get_un.htm")"(get-universal-time)")"が使えることに気付きました。"
  (:br)
  "SLIME上で(get-universal-time)を評価してURLにすると良いかもと。"
  "(get-universal-time)はUNIXタイムのように1970年からではなく、1900年からの秒数になります。")

;; 16
(defentry "/3458566436"
    (:title "急激に重くなった様子" :date 3458566436 :author "chiba" :category "blog制作")
  "画像はディレクトリごとにマッピングして読み込ませているのですが、いやに読み込みが遅い気がします。全部のファイルを個別にマッピングした方が良いのでしょうか。")

;; 17
(defentry "/3458828432" (:title "見た目だけはなんとか完成"
                                :author "chiba"
                                :date 3458828432
                                :category "blog制作")
  "見た目だけは、machidaさんのcssを合わせることにより、なんとか完成しました。" :br
  "デザインされたhtmlをlmlに直したりしているのですが、これが割と大変です。" :br
  "lmlとは、htmlをS式で表現したものなのですが、簡潔でS式の編集環境が整ってさえいれば素のhtmlより簡単に編集できます。" :br
  "とはいえ、その編集環境を整えるのが面倒なのですが…。")

;; 18
(defentry "/3458946663" (:title "このブログの更新はSLIMEでしている!"
                               :author "chiba"
                               :date 3458946663
                               :category "blog制作")
  "このブログの更新はSLIMEでしているんです!" :br
  "SLIME使ってる人には非常に優しいブログですね" :br
  "具体的には、このサーバーが動いているサーバーのSwankの4005番ポートをローカルにポートフォワードして、EmacsからSlimeで接続し、エントリーの関数を定義しています。簡単ですね!")

;; 19
(defentry "/3458970860" (:title "社長にお披露目"
                               :author "chiba"
                               :date 3458946663
                               :category "blog制作")
  "このブログは当社のエンジニア/デザイナーが作成しているのですが、会社のページとして公開できるかどうかということで、社長にお披露目することになりました。" :br
  "公開できると良いですね!!"
  )

;; 20
(defentry "/3459054071" (:title "こわれたRSSを付けました"
                                :author "chiba"
                                :date 3459054071
                                :category "blog制作")
  "がんばってRSSを付けたんですが、Safafiでは表示されません。" :br
  "どこかが壊れているようですが、Google Readerや、LDRではがんばって表示してくれるようです。"
  "しかし、それも動きがちょっと変なようです。"
  )

;; 22
(defentry "/3459056185" (:title "RSSは動いているか"
                         :author "chiba"
                         :date 3459056185
                         :category "blog制作")
  "適当にRSSを作成しているのですが、適当すぎて上手く動いてない気がします。" :br
  "このエントリーがRSSリーダーに捕捉されれば、とりあえず良いのですが、されてない気がします…"
  )


;; 23
(defentry "/3462793200" (:title "Talkedbun - 日本語テキストトゥースピーチサーバー"
                                :author "komagata"
                                :date 3462793200
                                :category "プログラムプレゼンテーション")

  (:p "komagataです。")
  (:p "アクトインディでは週一回、エンジニアが持ち回りで、「動いて、ダウロードできるプログラム」を公開・発表するという“プログラムプレゼンテーション”（まあ単なるプレゼンです）をやることにしました。")
  (:p "第一回はShu MASUDAさんでしたのでそちらはお任せするとして、僕は２回目にやりました。")
  (:blockquote
   (:p ((:a :href "http://docs.komagata.org/4190") "Talkedbun - 日本語テキストトゥースピーチサーバー - p0t"))
   (:p "URLにひらがなを指定すると、そのひらがなの音声がmp3で得られるwebサーバーを作りました。")
   (:p ((:a :href "http://github.com/komagata/talkedbun") "komagata’s talkedbun at master – GitHub")))

  (:p "日本語のURLからそのまま音声が取れたら面白いかなと思って作りました。作っていて一番勉強になったのは、RubyはRubygems, Rack, Sinatraなど、クロスプラットフォームでのマイクロウェイブアプリケーションを作る環境が素晴らしく整っているなということでした。RailsがWebrickをローカルに立ち上げて開発するというスタイルを作ったので自然とWebサーバーの実装、WAFの実装、周辺ツールなどの選択肢がたくさんあります。")
  (:p "ついでにhaml, sassも使ってみましたが、HTMLのインデントやCSSの重複した記述が病的に気になる僕にはぴったりのアホなツールでとても気に入りました。")
  (:p "（ジェバンニマチダさんが３０分でやってくれました）"))

;; 24
(DEFENTRY "/3462861600"
    (:TITLE "継続インテグレーションコマンド"
     :CATEGORY "プログラムプレゼンテーション"
     :DATE 3462861600
     :AUTHOR "komagata")
  "<p><p>komagataです。</p><p>“プログラムプレゼンテーション”で継続的インテグレーションコマンドを作って発表しました。</p><blockquote><p><a HREF=\"http://docs.komagata.org/4211\">saimaa - 今すぐ始められる継続的インテグレーション - p0t</a></p><p>継続的インテグレーションについては、CIサーバー(Continuous Integration Server)というやつが沢山あって非常に機能も豊富です。僕の仕事には少々大げさな気がしたのと、</p><p>「cronでsvn up && rakeじゃ駄目なのかしら？」</p><p>などと思ったのでそれをちょっとだけサポートするコマンドを作ってみました。</p><p><a HREF=\"http://github.com/komagata/saimaa/tree/master\">komagata’s saimaa at master – GitHub</a></p></blockquote><p>アクトインディではcapistranoのデプロイコマンドにrspecとcucumberのフックが掛けてあるのでテストが通らなければデプロイはできません。ですが、コミットはできるのでテスト通らないコードがコミットされるとすぐにこの仕組みでメールが飛んでくるのでなかなか便利です。</p><p>これを作って感じたのは、rubygemsとgithubはクロスプラットフォームのCUIプログラム（コマンド）を作る環境として素晴らしいなということです。（全開と似たようなこと言ってますが）</p><p>rubygemsはインストールするとPATHが通ってるところに実行できる場所にコマンドをコピーしてくれるんですよね。jewelerでgithubへのアップも簡単です。</p></p>")

;; 25
(DEFENTRY "/3462879600"
    (:TITLE "AquesTalk Rubyバインディング"
     :CATEGORY "プログラムプレゼンテーション"
     :DATE 3462879600
     :AUTHOR "komagata")
  "<p><p>komagataです。</p><p>“プログラムプレゼンテーション”でAquesTalkのRubyバインディングを作りました。（Windowsのみ）</p><blockquote><p><a HREF=\"http://docs.komagata.org/4243\">win32-aques_talk - AquesTalk rubyバインディング - p0t</a></p><p>AquesTalkのrubyバインディング作りました。</p><p><a HREF=\"http://github.com/komagata/win32-aques_talk/tree/master\">komagata’s win32-aques_talk at master – GitHub</a></p><p>AquesTalkはwindows版dllのみが組み込んで配布することもOKとなっているのでwindows版をRubyから手軽に使いたいと思って作りました。RubyバインディングといってもC言語拡張ではなく、ruby-ffi(Foreign Function Interface)を使っています。</p></blockquote><p>豊富なCのライブラリをRubyからサッと使いたいと思ってruby-ffiを使ってみました。ヘッダが必要で無く、動的ライブラリを直接実行するのが面白かったです。また、Windows上で、opensshやgitがいつも通り使えるのがちょっと意外でした。(rubyのgitバインディングはうまく動かないけど）</p></p>")

;; 26
(defentry "/3462883892"
    (:title "Emacsでスクラッチファイルを日付順にして管理するライフハック"
     :category "プログラムプレゼンテーション"
     :date 3462883892
     :author "chiba"     )
  (:p "chibaです。")
  (:p "自分は特にプログラムを書くのが趣味という訳でもないので、プログラムプレゼンテーションは割と苦手なのですが、今回は、過去に作った便利Emacs Lispをプレゼンして場をしのぎました。")

  (:p "アイデアとしては、ファイルを"
      (:blockquote "file-2009-09-26.txt")
      "のように命名規則を設けて作成するようにし(これもElispで生成するようにする)、その規則を元に前の日のファイルを開いたり、次の日のファイルを編集したりするのをスムースにする、というものです。" :br
      "→"((:a :href "http://gist.github.com/13417" )"gist: 13417 - GitHub") :br
      "この例では、前のファイルに移動するキーとしてsuper+p次のファイルがsuper+nという風に割り当てみています。" :br
      "単純なアイデアの割には便利ですので、お使いの環境でもっと洗練/発展させてみて下さい"))

;; 27
(DEFENTRY "/3463977650"
    (:TITLE
     "ブログもどき的、あまりにもブログもどき的"
     :CATEGORY
     "プログラムプレゼンテーション"
     :AUTHOR "chiba"
     :DATE 3463977650)
  (:P "chibaです。")
  (:P "今回のプログラム・プレゼンテーションのネタはこのブログもどきについてです。
そもそもは、ちょっと変ったことをしてみようということで、技術方面のブログはCLで作ってみようということになりました。")
  (:P "構成は、"
      (:UL
       (:LI "CL処理系: SBCL")
       (:LI "AllegroServe(RubyでいうWEBrickのようなもの)"))
      "という風になっています。")
  (:P "SBCL処理系は、ライブラリをロードした状態の処理系のメモリイメージを実行可能ファイルとしてダンプできるのですが、適当に手元のノートPCでAllegroServe(CLのウェブサーバー)をロードした状態でダンプしたものを、さくらサーバーに置いたところ動いてしまったので、そのまま動かすことにしました。(x86の実行ファイルです)")
  (:P "場当たり的に作っていく中で色々な問題に遭遇しました。"
      (:UL (:LI "AllegroServeだとサーバーの処理系を大文字と小文字を区別するように設定することが前提になっているのでそうしないと色々困る。")
           (:LI "AllegroServeをAllegro CL上で動かさない場合、日本語の扱いに難がある"))
      "等々、割と根本的なところに問題があったりします。" :BR
      ((:A :HREF "http://weitz.de/hunchentoot/") "HUNCHENTOOT")
      "というサーバーもちょっと試てみたのですが、上記のような問題はないので、こちらに乗り換えたいところです"))

;; 28
(DEFENTRY "/3463978702"
    (:TITLE
     "さようならsed、こんにちはCommon Lisp"
     :CATEGORY
     "プログラムプレゼンテーション"
     :AUTHOR "chiba"
     :DATE 3463978702)
  (:P "chibaです。")
  (:P "今回のプログラム・プレゼンテーションのネタは日常で使うちょっとしたスクリプトをCommon Lispでやってみようというものです。")
  (:P "ネタ切れなので自分の" ((:A :HREF "http://cadr.g.hatena.ne.jp/g000001/20091003/1254580668") "ブログに書いたネタ")
      "を再演しつつ、ブログでは紹介してなかったwgetも併せて動かしてみました"
      (:LI ((:A :HREF "http://gist.github.com/204860") "適当なwget")))
  (:P "Software ToolsのごとくCommon Lisp上にユーティリティを作成して行けば、Common Lispだけでこういう細かい仕事はできるようになるやもしれません。"))

;; 29
(DEFENTRY "/3466487639"
    (:TITLE
     "StumpWMは便利です"
     :CATEGORY
     "プログラムプレゼンテーション"
     :AUTHOR "chiba"
     :DATE 3466487639)
  (:P "今回のプログラム・プレゼンテーションのネタはStumpWMです。
StumpWMはタイル型ウィンドウマネージャーなのですが、Common LISPで色々と拡張することができるのが特長です。")
  (:P "今回は、このちょっとしたカスタマイズネタや使い方です。")
  (:P "Actindi社内では現在全面的にRedmineで仕事を管理していて、仕事の確認/依頼もチケット番号ですることが非常に多いです。" :BR
      "いつもチケットの番号でやりとりするのですが、伝えられた番号をぱっと開きたいことが多いので、これをStumpWMで便利にしてみようということで工夫してみました")
  (:PRE"
\(DEFPARAMETER *LAST-TICKET* NIL)

\(DEFCOMMAND SHOW-TICKET (TICKET-NUMBER) ((:STRING \"Ticket#: \"))
  (WHEN (RUN-SHELL-COMMAND 
         (FORMAT NIL 
                \"/usr/bin/firefox \"https://redmine.example.com/issues/show/~A\\\"\"
                 TICKET-NUMBER))
   (SETQ *LAST-TICKET* TICKET-NUMBER)))

\(DEFCOMMAND EDIT-IT () ()
  (RUN-SHELL-COMMAND
    (FORMAT NIL
            \"/usr/bin/firefox \"https://redmine.example.com/issues/edit/~A\\\"\"
            *LAST-TICKET*)))")
  (:P "非常にでっちあげ感の漂う適当なコードですが、show-ticket 1234という風に実行すると、Redmineの1234番のチケットがfirefoxで表示されます。":BR
      "edit-itコマンドは保存していた直前のチケット番号を編集状態で開くという単純なものです。"
      "ちょっとした工夫ですが、割と便利で愛用しています。":BR
      "といった具合で、その他、StumpWMの機能の説明をして1時間をしのぎました。":BR
      "みなさんもご興味あれば、StumpWMをお試しあれ。"))

