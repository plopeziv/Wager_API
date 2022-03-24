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
    @game = Game.new(
      gameId: "...",
      teamOne: "...",
      teamTwo: "...",
      gameSpread: "...",
      status: "...",
      scoreDiff: "..."
    )

    if @game.save
      redirect_to @game
    else
      render :new, status: :unprocessable_entity
    end
  end
end
