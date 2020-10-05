# README

# アプリ名 CINEMA REVIEW 

# アプリケーション概要

映画のレビュー投稿アプリとなっています。ユーザー登録をすれば作品のレビューを投稿することができ、他のユーザーのレビューも閲覧可能です。また自己紹介ページを作成することでお気に入りの情報を発信することが出来てユーザー同士の交流へと繋がります。



# URL 

https://cinema-29285.herokuapp.com/

# テスト用アカウント

アドレス 5678efgh@yahoo.co.jp

password 5678efgh

# 利用方法

新規登録画面へ移動し必要項目を全て入力してユーザー登録をする。その後、ログアウトした場合はログイン画面に移動し必要項目を入力してログインする。
ログイン状態であれば「レビュー投稿」をクリックしてレビューを投稿することが可能になる。また自己紹介ページに移動すれば自分の紹介文やお気に入りの情報を登録することができる。
ちなみにレビューと自己紹介ページの閲覧自体は未ログイン状態でも可能である

# 目指した課題解決

自分が観た映画の感想を発信し、また今後観たいと思う映画の情報を共有したいという人に向けて、その問題を解決するような投稿ツールを作成したかった

# 洗い出した要件

## ユーザー登録機能
登録に必要な情報を入力することでユーザー新規登録ができる

## レビュー投稿機能
レビュー投稿画面をクリックし、情報を入力送信すれば投稿できる

## 自己紹介ページ編集機能
自己紹介ページをクリックし、情報を入力送信すれば自己紹介ページを作成できる

## 検索機能
検索ページをクリックし、条件を指定すれば該当するレビューが検索できる

# 実装機能の予定

レビューや自己紹介に対するコメント機能は今後実装の可能性あり

# テーブル設計

## users テーブル
| Column    | Type    | Options    |
|-----------|---------|------------|
| nickname  | string  | null:| false|
| email    | string | null: false |
| password | string | null: false |
| birthday | date   | null: false |
| full_name | string | null: false |
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
| watch_time | integer | null: false |
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