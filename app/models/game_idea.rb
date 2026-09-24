class GameIdea < ApplicationRecord
  validates :title, :genre, :description, presence: true
end
