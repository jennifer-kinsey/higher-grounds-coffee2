class Product < ActiveRecord::Base
  validates :name, :description, :price, :image, :origin, :variety, presence: true
end
