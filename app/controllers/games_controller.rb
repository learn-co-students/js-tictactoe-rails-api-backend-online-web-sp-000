class GamesController < ApplicationController

    before_action :set_game, only: [:show, :update]

    def index #get games
        games = Game.all
        render :json => games
    end 
    
    def create #post to games
        game = Game.new(game_params)
        game.save
        render :json => game
    end 

    def show #get to games/:id
        
        render :json=> @game
    end

    def update #patch to games/:id
        
        @game.update(game_params)
        render :json => @game
        
        
    end

    private

    def set_game
        @game = Game.find(params[:id])
    end


    def game_params
        params.permit(state:[])
    end
end
