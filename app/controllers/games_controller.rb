class GamesController < ApplicationController
  # Add your GamesController code here
  before_action :set_game, only: [:show, :update]
  
  def index
    @games = Game.all
    render json: @games, status:200
  end

  def update
    @game.update(state: game_params)
  end

  def show
    render json: @game, status:201
  end

  def create
    @game = Game.create(state: game_params)
    render json: @game, status: 201
  end

  private
  def set_game
    @game = Game.find(params[:id])
  end
  def game_params
    params.require(:state)
  end
end
