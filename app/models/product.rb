class Product < ApplicationRecord
  belongs_to :user 
  has_one :product_location
  has_many :categories
end
