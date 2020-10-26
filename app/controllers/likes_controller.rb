class LikesController < ApplicationController
  def create
    @cinema = Cinema.find(params[:cinema_id])
    @like = current_user.likes.build(cinema_id: params[:cinema_id])
    @like.save
    @likeCounts = Like.where(cinema_id: params[:cinema_id])
  end

  def destroy
    @cinema = Cinema.find(params[:cinema_id])
    @like = Like.find_by(cinema_id: params[:cinema_id], user_id: current_user.id)
    @like.destroy
    # @likeCounts = Like.where(cinema_id: params[:cinema_id])
  end
end
