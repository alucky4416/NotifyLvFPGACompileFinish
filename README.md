NotifyLvFPGACompileFinish
=================================

# 概要

* LabVIEW FPGAコンパイル完了時に指定されたメールアドレスに通知メールを
送信するツール。
* 対応OS Windows
* Version 0.0.2

FPGAコンパイルは短くても20分から30分、長いと1時間くらいはかかります。
その間、他の作業をしているとうっかり忘れてしまったり、そういうときに限って
途中でエラーが発生したり、貴重な時間を無駄にしていまうことがあります。

# インストール

* Windows版 LabVIEW 2013 (32bit) で開発しています。
  EXEで使用する場合は、LabVIEW 2013 Runtime Engineが必要です。
* FPGA コンパイルできる環境
  ローカルコンパイルサーバでコンパイル実行すること。
* smtpメールサーバに接続できるネットワーク環境
  Webメールでは利用できません。
* smtpメール送信用のアカウントが必要です。

# 使用方法

### コンパイルフォルダーの設定
  デフォルトは、「C:\NIFPGA\compilation」が指定されています。
  FPGAツールキットをインストールすると、C:\NIFGA\ というフォルダが作成されます。
  その中の compilation フォルダにコンパイル時の中間ファイルやログが保存されます。
  このソフトはそのログファイルを監視することにより、FPGAコンパイル完了を判断します。

### メール送信の設定
  Settingボタンを押すと、メール送信設定画面が表示されます。
以下の項目を設定してください。

#### メールサーバの設定
1. メールサーバのアドレス
2. メールサーバのポート番号
3. 送信元メールアドレス
4. SMTP AUTH の使用有無
5. SMTP AUTH 使用する場合、ユーザIDとパスワード
6. SMTP over SSLの使用有無

#### 送信先アドレスの設定
送信先アドレスは最大3個まで設定できます。
最低1箇所は必須。テストメールを送信して確認できます。

#### 送信禁止時間帯の設定
送信禁止時間を設定できます。
例) 23:00 TO 6:00 （深夜23:00から翌日6:00 までは送信しない）
送信可能になるまで送信メールが蓄積されます。

### 監視開始・監視停止
Startボタンを押すとFPGAコンパイルフォルダの監視を開始します。
開始すると画面の監視中ランプ（緑）が点灯します。
コンパイルが始まると、コンパイル中ランプ（赤）が点灯します。
コンパイル完了すると、完了から約1分以内にメールが送信されます。
画面上のログ表示にコンパイル完了とメール送信時にログが表示されます。
複数回コンパイル実行でも、同様に、各コンパイル完了後にメールが送信
されます。
監視の開始は、FPGAコンパイルを開始した後でもかまいません。

Stopボタンを押すとFPGAコンパイルフォルダの監視を終了します。
通知メールが蓄積された状態だった場合はすべてキャンセルされます。

メールサーバとの通信に失敗した場合、次回のメール送信まで遅延されます。
次回のメール送信までのチェック間隔を10分にします。（通常は1分間隔）
発生中は画面にエラーメッセージを表示します。
蓄積可能なメール送信数は30通までに制限しています。30通を超えると、
新しく発生した通知は送信されません。

### 送信メールの内容

題名: \[FPGA Compile Finish\] <FPGAターゲット> on <コンパイルサーバ名>  
本文:  
\====================================  
FPGA Compile Finish(コンパイル終了日時)  
\====================================  
（FPGAコンパイルログファイルの（LvXilinxLog.txt）末尾10行の内容を抜粋したもの）  
（成功なら"completed successfully"のテキストが入っているはず。）  


### メール送信時のトラブル

以下の原因が考えられます。

* Windows ファイアウォールの設定
* 社内LAN ファイアウォールの設定
* ウィルス対策ソフトでのメール送信ブロックの設定
* メールサーバ側のセキュリティ対策 smtp auth, smtp over ssl, 送信元IPアドレスの制限
