class GameIdeasController < ApplicationController
  def index
    @game_ideas = GameIdea.order(created_at: :desc)
  end
end
