class Review < ApplicationRecord
  validates :rating, numericality: { only_integer: true }, inclusion: { in: (0..5) }
  validates :content, :rating, presence: true
  belongs_to :restaurant
end
