class Item < ApplicationRecord
  validates :item_explanation, presence: true
  validates :item_name, presence: true
  validates :condition_id, presence: true
  validates :prefecture_id, presence: true
  validates :category_id, presence: true
  validates :price, presence: true
  validates :delivery_charge_id, presence: true
  validates :time_required_id, presence: true
  validates :user, presence: true

  belongs_to :user
  has_one_attached :image
end
