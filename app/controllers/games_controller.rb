class GamesController < ApplicationController
  # Add your GamesController code here
  
  def index
    render json: Game.all
  end

  def create
    Game.create(state: params[:state])
  end

  def show
    render json: Game.find(params[:id])
  end

  def update
    game = Game.find(params[:id])
    game.update(state: params[:state])
  end

end
