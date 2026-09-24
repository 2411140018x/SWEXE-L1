class GameIdea < ApplicationRecord
  validates :title, :genre, :description, presence: true
  validates :title, length: { maximum: 80 }
  validates :genre, length: { maximum: 40 }
  validates :description, length: { maximum: 1000 }
end
