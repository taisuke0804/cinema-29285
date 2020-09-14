# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# テーブル設計

## users テーブル
| Column    | Type    | Options    |
|-----------|---------|------------|
| nickname  | string  | null:| false|
| email    | string | null: false |
| password | string | null: false |
| birthday | date   | null: false |
| name     | string | null: false |
| furigana | string | null: false |
| sex      | integer| null: false |

### Association

- has_many :cinemas
- has_many :comments
- has_one :favorite


## cinemas テーブル
| Column    | Type    | Options    |
|-----------|---------|------------|
| title     | string  | null: false |
| score     | integer | null: false |
| spoiler   | integer | null: false |
| genre     | integer | null: false |
| review    | text    | null: false |
| appreciation | integer | null: false |
| user         | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :comments


## favorites テーブル
| Column    | Type    | Options    |
|-----------|---------|------------|
| movie_1   | string  |            |
| movie_2   | string  |            |
| movie_3   | string  |            |
| movie_4   | string  |            |
| movie_5   | string  |            |
| movie_6   | string  |            |
| movie_7   | string  |            |
| movie_8   | string  |            |
| movie_9   | string  |            |
| movie_10   | string  |            |
| actor_1    | string  |            |
| actor_2    | string  |            |
| actor_3    | string  |            |
| actor_4    | string  |            |
| actor_5    | string  |            |
| director_1   | string  |            |
| director_2   | string  |            |
| director_3   | string  |            |
| profile      | text    |            |
| user         | references | null: false, foreign_key: true |

### Association

- belongs_to :user


## comments テーブル
| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | text       |                                |  ## コメント
| user    | references | null: false, foreign_key: true |  ## ユーザーID
| cinema    | references | null: false, foreign_key: true |  ## タイトルID

### Association

- belongs_to user
- belongs_to cinema