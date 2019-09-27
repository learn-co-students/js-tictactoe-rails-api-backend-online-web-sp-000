class GamesController < ApplicationController
  # Add your GamesController code here
  def create
    @game = Game.new
    @game.state = game_params
    @game.save

    render json: @game, status: 201
  end
  
  def show  
    @game = Game.find(params[:id])

    render json: @game
  end

  def update
    @game = Game.find(params[:id])
    @game.state = game_params
    @game.save

    render json: @game
  end

  def index
    @games = Game.all

    render json: @games
  end

  private

  def game_params
    params[:state]
  end

  
  
end
