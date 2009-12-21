(in-package :tech.actindi.net)

;; 1
(defentry "/3444130800"
    (:title "ブログはじめました"
            :author "komagata"
            :date 3444130800
            :category "システム管理")
  "はじめまして。komagataと申します。" :br
  "先日、アクトインディ株式会社のシステムの担当になったのでこのブログを作ってみました。":br
  "小さくてくだらない作業までこのブログに書いていこうと思うので、「ベンチャーのシステム担当あるある」":br
  "みたいな感じで見ていただければ・・・なとと考えています。":br
  "現状、僕とアルバイトのsakurabaの二人でネットワークと開発（要するにパソコン関係全部）を担当しています。":br
  "僕自身、ネットワークの知識がイマイチなところもあり、「そこはこうすべきだろう、常識的に考えて・・・」":br
  "などというところがあれば教えていただきたいな、という面もあります。":br
  "なにはともあれ、よろしくお願いします。")

;; 2
(defentry "/3444174000"
    (:title "迫る引越し"
            :author "komagata"
            :date 3444174000
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
    "明日中に全クライアント向けの配線や設定を済ませてこようと思います。")

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

(defentry "/3444476400"
  (:title "オフィスの引越し（プロバイダー編）"
          :author "komagata"
          :category "システム管理"
          :date 3444476400)
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

(defentry-ut (2009 3 9 16 0 0)
    (:title "こんにちは、こんにちは" :author "chiba" :category "人")
  "こんにちは、先週の金曜からお世話になっております、chiba☆2009と申します。 「改善」という言葉は自分の一番好きな言葉で座右の銘としております。 世界をCommon Lisp色に改善してゆきたいと思っています!" :br
  "どうぞよろしくお願いします！！")


(defentry-ut (2009 4 10 0 0 0)
    (:title "掃除は大事" :author "chiba" :category "システム管理")
    "社内PCで突然電源がOFFになる不調なPCがあり、メモリチェック等色々対処してみたのですが、特に不具合は見付けられず、困っていました。" :br
    "稼働中のPCを触ってみたところかなり高温になっているという報告を受けたので、4月から新しい仲間になったmasuda氏が機転を効かせてPC内部を掃除したところ、ばっちりPCの温度が下がり、調子も良くなりました。" :br
    "どうも熱暴走でPCが落ちてしまっていたようです。" :br
    "基本ですが掃除は大事だなとあらためて思った一件です。")


(defentry-ut (2009 7 29 10 0 0)
    (:title "テストエントリー" :author "chiba" :category "blog制作")
  (:p "SBCLだと日本語が通らないので、無理矢理にマクロを通したり、文字列をバイト列に変換したり涙ぐましいのですが、もっと簡単な方法はないんでしょうか。"
      :br
      "根本的に直さないと駄目な気がしてきました。"
      "AllegroServeより良いのってどういうのがあるんでしょう。"))

(defentry-ut (2009 7 29 11 0 0)
    (:title "Hunchentootにしたい" :author "chiba" :category "blog制作")
  (:p "色々面倒臭そうなのでHunchentootにしたくなってきました。"
      "とはいえ、Hunchentootも使ったことがないのでなんとも言えません。"))

(defentry-ut (2009 7 29 12 0 0)
    (:title "エントリーを後でどういう風に修正したら良いか"  :author "chiba" :category "blog制作")
  (:p "エントリーを後でどういう風に修正したら良いか"
      :br
      "めんどくさそうです。"))

#|(defentry "/4"
    (:title "悲しきAllegro"
            :author "chiba")
  "色々探ってみているのですが、日本語の文字列をちゃんと扱えないという時点でAllegroServeは捨てな気がしてきました。"
  (:br)
    "Hunchentootとかにした方が良いんじゃないかなと")|#

(defentry "/3458279064" (:title "CSSはウェブページの命" :author "chiba" :category "blog制作" :date 3458279064)
  "駄目なページでもスタイルシートを当てるとそれなりに見えるのは不思議ですね。" )

(defentry "/3458280064" (:title "エントリーを後でどういう風に修正したら良いか" :author "chiba" :category "blog制作" :date 3458280064)
  (:p "エントリーを後でどういう風に修正したら良いか"
      (:br)
      "めんどくさそうです。"))

(defentry "/3458279537" (:title "URLを毎度決めている" :date 3458279537  :author "chiba" :category "blog制作")
  "今のところURLを毎回決めていますが、これに"((:a :href "http://www.lispworks.com/documentation/HyperSpec/Body/f_get_un.htm")"(get-universal-time)")"が使えることに気付きました。"
  (:br)
  "SLIME上で(get-universal-time)を評価してURLにすると良いかもと。"
  "(get-universal-time)はUNIXタイムのように1970年からではなく、1900年からの秒数になります。")


;(get-universal-time)

#|(defentry "/3458343653" (:title "ロードします")
  "がんがんロードします!")|#

;(get-universal-time)

(defentry "/3458566436"
    (:title "急激に重くなった様子" :date 3458566436 :author "chiba" :category "blog制作")
  "画像はディレクトリごとにマッピングして読み込ませているのですが、いやに読み込みが遅い気がします。全部のファイルを個別にマッピングした方が良いのでしょうか。")


#|(defentry "/3458566440" (:title "内容符号化 (Content-Encoding) に問題があります"
                                :date 3458566440
                                :author "komagata")
  (:BLOCKQUOTE "内容符号化 (Content-Encoding) に問題があります"
               (:P "不正または不明な形式で圧縮されているため、ページを表示できません。" :BR "この問題を Web サイトの管理者に報告してください。"))
  (:P "Firefoxで上記の様な症状が出るという報告を受けたのでちょっと調べてみました。")
  (:P "参考：" ((:A :HREF "http://forum.mozilla.gr.jp/cbbs.cgi?mode=al2&amp;namber=43360&amp;KLOG=278") "もじら組フォーラム [One Topic All View / Re: 本当に、問題が全くないサイト？"))
  (:P "Apache1.3系のmod_gzipとFirefox3.xのRangeヘッダー対応関係の話らしい。たぶん、gzipで圧縮されたByte数とFxにキャッシュされたByte数が違うのにRangeで間違った場所から読み始めるからおかしくなるんだと思う。")
  (:P "Range使わなきゃいいかなということで、レンタルサーバーの.htaccessに下記を書いたら直った。")
  (:PRE (:CODE "Header set Accept-Ranges noneHeader set Accept-Ranges noneHeader set Accept-Ranges noneHeader set Accept-Ranges noneHeader set Accept-Ranges noneHeader set Accept-Ranges noneHeader set Accept-Ranges noneHeader set Accept-Ranges noneHeader set Accept-Ranges noneHeader set Accept-Ranges noneHeader set Accept-Ranges noneHeader set Accept-Ranges noneHeader set Accept-Ranges none"))
  (:P "ちゃんと追ってないので根本的にサーバーとクライアントどっちが悪いのか分かってません。")
  (:P "正しい答えをお持ちの方は情報いただけるとありがたいです！！"))|#


(defentry "/3458828432" (:title "見た目だけはなんとか完成"
                                :author "chiba"
                                :date 3458828432
                                :category "blog制作")
  "見た目だけは、machidaさんのcssを合わせることにより、なんとか完成しました。" :br
  "デザインされたhtmlをlmlに直したりしているのですが、これが割と大変です。" :br
  "lmlとは、htmlをS式で表現したものなのですが、簡潔でS式の編集環境が整ってさえいれば素のhtmlより簡単に編集できます。" :br
  "とはいえ、その編集環境を整えるのが面倒なのですが…。")

(defentry "/3458946663" (:title "このブログの更新はSLIMEでしている!"
                               :author "chiba"
                               :date 3458946663
                               :category "blog制作")
  "このブログの更新はSLIMEでしているんです!" :br
  "SLIME使ってる人には非常に優しいブログですね" :br
  "具体的には、このサーバーが動いているサーバーのSwankの4005番ポートをローカルにポートフォワードして、EmacsからSlimeで接続し、エントリーの関数を定義しています。簡単ですね!")

(defentry "/3458970860" (:title "社長にお披露目"
                               :author "chiba"
                               :date 3458946663
                               :category "blog制作")
  "このブログは当社のエンジニア/デザイナーが作成しているのですが、会社のページとして公開できるかどうかということで、社長にお披露目することになりました。" :br
  "公開できると良いですね!!"
  )

(defentry "/3459054071" (:title "こわれたRSSを付けました"
                                :author "chiba"
                                :date 3459054071
                                :category "blog制作")
  "がんばってRSSを付けたんですが、Safafiでは表示されません。" :br
  "どこかが壊れているようですが、Google Readerや、LDRではがんばって表示してくれるようです。"
  "しかし、それも動きがちょっと変なようです。"
  )


(defentry "/3459056185" (:title "RSSは動いているか"
                                :author "chiba"
                                :date 3459056185
                                :category "blog制作")
  "適当にRSSを作成しているのですが、適当すぎて上手く動いてない気がします。" :br
  "このエントリーがRSSリーダーに捕捉されれば、とりあえず良いのですが、されてない気がします…"
  )

#|
(setq *all-entries*
      (remove "/3458280064" *all-entries*
              :test #'string=
              :key #'entry-path))


(find "/3458280064"
      ;"/3458566440"
      *all-entries*
      :test #'string=
      :key #'entry-path)
|#
