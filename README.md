# テーブル設計

## users テーブル

| Column     | Type   | Options    |
| -----------| ------ | ---------- |
| name       | string | null: null |
| email      | string | null: null |
| password   | string | null: null |
| profile    | text   | null: null |
| occupation | text   | null: null |
| position   | text   | null: null |


### Association

- has_many :prototypes
- has_many :comments

## prototypes テーブル

| Column       | Type       | Options     |
| ------------ | ---------- | ----------- |
| title        | string     | null: false |
| catch_copy   | text       | null: false |
| concept      | text       | null: false |
| user         | references |             |

### Association

- belongs_to :user
- has_many :comments

## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| text    | text       | null: false                    |
| user    | references | null: false                    |
| room    | references | null: false                    |

### Association

- belongs_to :prototype
- belongs_to :user