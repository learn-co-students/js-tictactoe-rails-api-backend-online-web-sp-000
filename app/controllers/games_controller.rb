class GamesController < ApplicationController
  # Add your GamesController code here

  def create
    @game = Game.create
    @game.state = params[:state]
    @game.save
  end

  def index
    render json: Game.all, status: 200
  end

  def show
    @game = Game.find(params[:id])
    render json: @game, status: 200
  end

  def update
    @game = Game.find(params[:id])
    @game.update(:state => params[:state])
  end

end
