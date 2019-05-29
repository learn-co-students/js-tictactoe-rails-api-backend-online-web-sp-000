class GamesController < ApplicationController
  before_action :set_game, only: [:show, :update]

  def create
    @game = Game.create(state: params[:state])
    render json: @game, status:201
  end

  def show
    render json: @game, status: 201
  end

  def update

  end

  def index

  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

end
