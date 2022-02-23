class Restaurant < ApplicationRecord
  # variavel para ser usada depois em todos os metodos externos
  CATEGORIES = %w[chinese italian japanese french belgian]
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORIES }
  has_many :reviews, dependent: :destroy
end
