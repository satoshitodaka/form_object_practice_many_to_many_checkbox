class Product < ApplicationRecord
  has_many :product_categories
  has_many :categories, through: :product_categories
  
  validates :code, presence: true
  validates :name, presence: true
  validates :price, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
