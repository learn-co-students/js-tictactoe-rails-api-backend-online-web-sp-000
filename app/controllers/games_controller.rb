class GamesController < ApplicationController
  # Add your GamesController code here

  def index
    render json: Game.all
  end

  def create
    render json: Game.create(game_params), status: 201
  end

  def show
    render json: Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    render json: @game.update(game_params)
  end

  private

  def game_params
    params.permit(state: [])
  end
end
