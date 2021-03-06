class Api::V1::RoundsController < ApplicationController

  def index
    @rounds = Round.all
    render json: @rounds
  end

  def create
    @round = Round.create(round_params)
    render json: @round
  end

  private
  def round_params
    params.require(:round).permit(:user1_id, :user1_score, :user2_id, :user2_score, :game_id, :category)

  end
end
