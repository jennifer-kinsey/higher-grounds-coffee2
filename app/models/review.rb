class Review < ActiveRecord::Base
  belongs_to :product

  validates :author, :content, presence: true
end
