class GamesController < ApplicationController
  
    def index
    end
  
    def show
      @game = game.find(params[:id])
    end
  
    def create
      @game = Game.create(state: params[:state])
      render json: @game, status: 201
    end
  
    def update
      @game = game.find(params[:id])
    end
end
