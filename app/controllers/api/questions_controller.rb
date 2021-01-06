class Api::QuestionsController < ApplicationController
  def index
    render json: Card.all
  end

  def show
    render json: Card.find(params[:card_id]).questions.first
  end

  def update
  end

  def destroy
  end
end
