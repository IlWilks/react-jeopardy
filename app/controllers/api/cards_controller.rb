class Api::CardsController < ApplicationController
  def index
    render json: Cards.all
  end

  def show
    render json: Cards.find(params[:id])
  end

  def create
  end

  def destroy
  end
end
