class CinemasController < ApplicationController

  def index
    @cinemas = Cinema.all.order("created_at DESC")
  end

  def new
    @cinema = Cinema.new
  end

  def create
    @cinema = Cinema.new(cinema_params)
    if @cinema.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def cinema_params
    params.require(:cinema).permit(:title, :review, :score, :spoiler_id, :genre_id, :appreciation_id).merge(user_id: current_user.id)
  end

end
