## README

# FURIMA

Foobar is a Python library for dealing with word pluralization.

## Installation

Use the package manager [pip](https://pip.pypa.io/en/stable/) to install foobar.

```bash
pip install foobar
```

## Usage

```python
import foobar

foobar.pluralize('word') # returns 'words'
foobar.pluralize('goose') # returns 'geese'
foobar.singularize('phenomena') # returns 'phenomenon'
```

## License
[MIT](https://choosealicense.com/licenses/mit/)


# freemarket_sample_68th DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|birthyear|string|null: false|
|birthmonth|string|null: false|
|birthday|string|null: false|
|family_name_zenkaku|string|null: false|
|first_name_zenkaku|string|null: false|
|family_name|string|null: false|
|first_name|string|null: false|
|mail|string|null: false|
|encrypted_password|string|null: false|
|remember_created_at|
|phone_number|string|null: false|
### Association
- has_one :address
- has_many :products
- has_many :purchases
- has_many :cards

## cardsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false|
|customer_id|string|null: false|
|card_id|string|null: false|
### Association
- belongs_to :user

## addressesテーブル
|Column|Type|Options|
|------|----|-------|
|zipcode|int|null: false|
|city|text|null: false|
|address|text|null: false|
|building|text|null: false|
|phone_number|text|null: false|
|user_id|references|null: false, foreign_key: true|
|prefecture_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to_active_hash :prefecture

## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|name|text|null: false|
### Association
- belongs_to :product

## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|ancestry|string|
### Association
- has_many :products
- has_ancestory


## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|text|null: false|
|product_id|references|null: false, foreign_key: true|
### Association
- belongs_to :product

## productsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|content|text|null: false|
|condition_id|references|null: false|
|status_id|references|null: false|
|payment_id|references|null: false|
|delivery_date_id|references|null: false|
|derivery_method_id|references|null: false|
|price|int|null: false|
|user_id|references|null: false, foreign_key: true|
|brand_id|references|null: false, foreign_key: true|
|category_id|references|null: false, foreign_key: true|
|prefecture_id|references|null: false, foreign_key: true|
### Association
- has_many :images
- belongs_to :category
- belongs_to :brand
- belongs_to :user
- belongs_to :purchase, optional: true
- belongs_to_active_hash :status
- belongs_to_active_hash :payment
- belongs_to_active_hash :delivery_date
- belongs_to_active_hash :delivery_method
- belongs_to_active_hash :prefecture
- belongs_to_active_hash :condition

## purchasesテーブル
|Column|Type|Options|
|------|----|-------|
|product_id|references|null: false|
|user_id|references|null: false|
### Association
- has_one :product
- belongs_to :user



