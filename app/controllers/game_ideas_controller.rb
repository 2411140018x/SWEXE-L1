class GameIdeasController < ApplicationController
  def index
    @game_ideas = GameIdea.order(created_at: :desc)
  end

  def show
    @game_idea = GameIdea.find(params[:id])
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

  def edit
    @game_idea = GameIdea.find(params[:id])
  end

  def update
    @game_idea = GameIdea.find(params[:id])

    if @game_idea.update(game_idea_params)
      redirect_to game_idea_path(@game_idea), notice: "ゲームアイデアを更新しました。"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    game_idea = GameIdea.find(params[:id])
    game_idea.destroy!
    redirect_to game_ideas_path, notice: "ゲームアイデアを削除しました。", status: :see_other
  end

  private

  def game_idea_params
    params.require(:game_idea).permit(:title, :genre, :description)
  end
end
