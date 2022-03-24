class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end 

  def create
    @game = Game.new(game_params)

    if @game.save
      redirect_to @game
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def game_params
      params.require(:game).permit(
        :gameId,
        :teamOne,
        :teamTwo,
        :gameSpread,
        :status,
        :scoreDiff
      )
    end
end
