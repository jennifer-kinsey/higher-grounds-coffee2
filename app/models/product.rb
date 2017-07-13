class Product < ActiveRecord::Base
  has_many :reviews, dependent: :destroy

  validates :name, :description, :price, :image, :origin, :variety, presence: true

  scope :highest_price, -> { order(price: :desc) }
end
