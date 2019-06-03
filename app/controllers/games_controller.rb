class GamesController < ApplicationController

  def create
    @game = Game.create(state: ["X", "", "", "", "", "", "", "", ""])
  end

  def show
    @game = Game.find(params[:id])
    render json: @game
  end

  def update
    @game = Game.find(params[:id])
    @game.update(state: ["X", "O", "", "", "", "", "", "", ""])
  end

  def index
    @games = Game.all
    render json: @games
  end

end
