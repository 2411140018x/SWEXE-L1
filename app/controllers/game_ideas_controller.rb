class GameIdeasController < ApplicationController
  def index
    @game_ideas = GameIdea.order(created_at: :desc)
  end

  def new
    @game_idea = GameIdea.new
  end

  def create
    @game_idea = GameIdea.new(game_idea_params)

    if @game_idea.save
      redirect_to game_ideas_path, notice: "ゲームアイデアを登録しました。"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def game_idea_params
    params.require(:game_idea).permit(:title, :genre, :description)
  end
end
