class Product < ApplicationRecord
  has_many :order_items
  validates :name, :price, :image, :description, :presence => true
end
