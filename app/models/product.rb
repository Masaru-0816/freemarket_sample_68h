class Product < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  has_many :images
  accepts_nested_attributes_for :images, allow_destroy: true
  belongs_to :category
  belongs_to :brand
  belongs_to :user
end
