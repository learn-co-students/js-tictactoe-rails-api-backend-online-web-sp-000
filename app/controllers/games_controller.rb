class GamesController < ApplicationController
  before_action :find_games, only: [:show, :update]
  
  def new 
    @game = Game.new 
  end 

  def create 
    @game = Game.create(game_params)
    render json: @game 
  end 

  def update 
    @game.update(game_params)
    render json: @game 
  end 

  def show 
    render json: @game 
  end 

  def index 
    @games = Game.all 
    render json: @games 
  end 

  private 

  def game_params 
    params.permit(state: [])
  end 

  def find_games
    @game = Game.find(params[:id])
  end 

end
