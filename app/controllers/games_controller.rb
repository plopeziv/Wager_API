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

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])

    if @game.update(game_params)
      redirect_to @game
    else
      render :edit, status: :unprocessable_entity
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
