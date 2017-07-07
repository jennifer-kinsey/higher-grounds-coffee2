class Product < ActiveRecord::Base
  has_many :reviews
  
  validates :name, :description, :price, :image, :origin, :variety, presence: true
end
