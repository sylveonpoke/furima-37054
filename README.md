# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| nickname           | string | null: false               |
| name               | string | null: false               |
| date_of_birth      | date   | null: false               |

### Association

- has_many :items
- has_many :buys

## items テーブル

| Column             | Type       | Options                   |
| ------------------ | ------     | ------------------------- |
| image              | string     | null: false               |
| item_name          | string     | null: false               |
| category           | string     | null: false               |
| condition          | string     | null: false               |
| prefecture         | string     | null: false               |
| price              | integer    | null: false               |
| delivery_charge    | integer    | null: false               |
| time_required      | integer    | null: false               |
| user_id            | references | foreign_key: true         |

### Association

- belongs_to :user
- has_one :buy

## buys テーブル

| Column             | Type       | Options                   |
| ------------------ | ------     | ------------------------- |
| user_id            | references | foreign_key: true         |
| item_id            | references | foreign_key: true         |

### Association

- belongs_to :user
- belongs_to :item
- has_one :addresses

## addresses テーブル

| Column             | Type       | Options                   |
| ------------------ | ------     | ------------------------- |
| prefecture         | string     | null: false               |
| city               | string     | null: false               |
| address            | string     | null: false               |
| apartment          | string     |                           |
| post_code          | integer    | null: false               |
| phone_number       | integer    | null: false               |
| buy_id             | references | foreign_key: true         |

### Association

- belongs_to :buy

