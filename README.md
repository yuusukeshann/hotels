# テーブル設計

## hotels テーブル

| Column             | Type    | Options                   |
| ------------------ | ------  | ------------------------- |
| name               | string  | null: false               |
| prefecture_id      | integer | null: false               |


### Association

has_many :rooms
has_many :plans



## plans テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------  | ------------------------------ |
| name               | string     | null: false                    |
| price              | integer    | null: false                    |
| content            | text       | null: false                    |
| hotel              | references | null: false, foreign_key: true |
| room               | references | null: false, foreign_key: true |

### Association

belongs_to :hotel
belongs_to :room
has_one :reservation


## rooms テーブル

| Column             | Type       | Options                        |
| ------------------ | ---------  | ------------------------------ |
| name               | string     | null: false                    |
| rank               | string     | null: false                    |
| headcount          | string     | null: false                    |
| hotel              | references | null: false, foreign_key: true |


### Association

belongs_to :hotel
has_many :plans



## reservations テーブル

| Column             | Type       | Options                        |
| ------------------ | ------     | ------------------------------ |
| date               | datetime   | null: false                    |
| booking_amount     | integer    | null: false                    |
| booking_headcount  | integer    | null: false                    |
| hotel              | references | null: false, foreign_key: true |
| plan               | references | null: false, foreign_key: true |
| user               | references | null: false, foreign_key: true |



### Association

belongs_to :user
belongs_to :plan



## users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------  | ------------------------- |
| nickname           | string  | null: false               |
| encrypted_password | string  | null: false               |
| email              | string  | null: false, unique: true |

### Association

has_many :reservations