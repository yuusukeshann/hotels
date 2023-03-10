## アプリケーション名	
 Hotels  
<br><br>

## アプリケーション概要	

ホテル予約サイト

<br><br>
## アプリケーションを作成した背景	
普段使用しているWEBアプリなら参考になるものもあり勉強になると思い
オンラインスクールで物を売り買いするアプリは作ったので、
予約アプリを作成しようと考えました。

<br><br>

## 使用した言語・gem

RUBY
RUBY ON RAILS
devise
active_hash
simple_calendar

<br><br>

## データベース設計

[![Image from Gyazo](https://i.gyazo.com/049af7989b407bee2719a4b7d9874515.png)](https://gyazo.com/049af7989b407bee2719a4b7d9874515)

<br><br>


## 画面遷移図	

[![Image from Gyazo](https://i.gyazo.com/b1ca2f88820b10073c70b9bc4f33c9bc.png)](https://gyazo.com/b1ca2f88820b10073c70b9bc4f33c9bc)

<br><br>


## 実装した機能についての画像やGIFおよびその説明※

・新規登録画面、ログイン画面
[![Image from Gyazo](https://i.gyazo.com/2fa6d9cad526ac9332107e22d5363e05.gif)](https://gyazo.com/2fa6d9cad526ac9332107e22d5363e05)


・TOP PAGE  
[![Image from Gyazo](https://i.gyazo.com/5023ae00c331addddd84a000c67f2961.gif)](https://gyazo.com/5023ae00c331addddd84a000c67f2961)



<br><br>

## 実装予定の機能	

* ホテル検索結果ページ  
* ホテル検索機能の実装
  * ４つのテーブル結合
  * 結合したテーブルからの検索機能 
  * 検索結果の表示
  * 画像の表示
  * 保存していない値を利用しての表示

<br>
* 予約確定前確認ページ
  * トップページで入力した情報の* 検索結果ページを跨いでの表示  

<br>

* 予約完了ページ 
  * 検索時に入力した値の取得と保存

<br>

* 予約確認ページ
  * テーブルの結合
  * 結合したテーブルからの検索機能 
  * 検索結果の表示


<br>

* 予約の削除ページ   
* 削除完了ページ  

* カレンダーで予約有無の表示


<br><br>


## テーブル設計

### hotels テーブル

| Column             | Type    | Options                   |
| ------------------ | ------  | ------------------------- |
| prefecture_id      | integer | null: false               |
| name               | string  | null: false               |


### Association

has_many :rooms  
has_many :plans
has_many :reservation

<br><br>

### plans テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------  | ------------------------------ |
| plan_name          | string     | null: false                    |
| price              | integer    | null: false                    |
| content            | text       | null: false                    |
| hotel              | references | null: false, foreign_key: true |
| room               | references | null: false, foreign_key: true |

### Association

belongs_to :hotel  
belongs_to :room  
has_many :reservation

<br><br>

### rooms テーブル

| Column                | Type       | Options                        |
| --------------------- | ---------  | ------------------------------ |
| room_name             | string     | null: false                    |
| room_size             | string     | null: false                    |
| max_people_available  | string     | null: false                    |
| hotel                 | references | null: false, foreign_key: true |


### Association

belongs_to :hotel  
has_many :plans

<br><br>

### reservations テーブル

| Column             | Type       | Options                        |
| ------------------ | ------     | ------------------------------ |
| first_day          | date       | null: false                    |
| last_day           | date       | null: false                    |
| number_of_night    | integer    | null: false                    |
| guest_id           | integer    | null: false                    |
| booking_price      | integer    | null: false,                   |
| plan               | references | null: false, foreign_key: true |
| user               | references | null: false, foreign_key: true |




### Association

belongs_to :user  
belongs_to :plan
belongs_to :hotel

<br><br>

### users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------  | ------------------------- |
| nickname           | string  | null: false               |
| encrypted_password | string  | null: false               |
| email              | string  | null: false, unique: true |

### Association

has_many :reservations