# README

## users

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| email      | string | null: false |
| password   | string | null: false |
| name       | string | null: false |
| profile    | text   | null: false |
| occupation | text   | null: false |
| position   | text   | null: false |

### Association

 - has_many :prototypes
 - has_many :comments

## prototypes

| Column     | Type       | Options                       |
| ---------- | ---------- | ----------------------------- |
| title      | string     | null: false                   |
| catch_copy | text       | null: false                   |
| concept    | text       | null: false                   |
| image      |            |                               |
| user       | references | null: false foreign_key :user |

### Association

 - belongs_to :user
 - has_many :comments

## comments

| Column    | Type       | Options     |
| --------- | ---------- | ----------- |
| text      | text       | null: false |
| user      | references |             |
| prototype | references |             |

### Association

 - belongs_to :user
 - belongs_to :prototype