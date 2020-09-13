# README

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|phone number|string|null: false|
|Street address|string|null: false|
|password|string|null: false|
|nickname|string|null: false|
### Association
- has_many : lothes information
- has_many : rental

## moneyテーブル
|Column|Type|Options|
|------|----|-------|
|payment|string|null: false|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user

## Clothesinformation
|Column|Type|Options|
|------|----|-------|
|price|integer|null: false|
|title||string|null: false|
|clothes_id|integer|null: false, foreign_key: true|
### Association
- has_many :users, through: :ClothesInformation_users
- has_many :ClothesInformation_users


# rental
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|clothes_id|integer|null: false, foreign_key: true|

### Association
- has_many :users, through: :ClothesInformation_users
- has_many :ClothesInformation_users

# Return
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|clothes_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- has_many :rental


## ClothesInformation_users
|Column|Type|Options|
|------|----|-------|
|users_id|integer|null: false, foreign_key: true|
|clothes_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :ClothesInformation
- belongs_to :user