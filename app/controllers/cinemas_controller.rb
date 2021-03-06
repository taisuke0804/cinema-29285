class CinemasController < ApplicationController
  before_action :move_to_index, except: [:index, :show, :search]
  before_action :search_cinemas, only: :search

  def index
    @cinemas = Cinema.all.order("created_at DESC")
    #@favorite = Favorite.find_by(user_id: current_user.id)
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

  def show
    @cinema = Cinema.find(params[:id])

    @comment = Comment.new
    @comments = @cinema.comments.includes(:user)

    # Like.new
  end

  def edit
    @cinema = Cinema.find(params[:id])
  end

  def update
    @cinema = Cinema.find(params[:id])
    @cinema.update(cinema_params)
    if @cinema.save
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    cinema = Cinema.find(params[:id])
    cinema.destroy
    redirect_to root_path
  end

  def search
    @cinemas = @p.result.order("created_at DESC").includes(:user)
  end

  private
  def cinema_params
    params.require(:cinema).permit(:title, :review, :score, :spoiler_id, :genre_id, :appreciation_id, :watch_time_id).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in? 
      redirect_to action: :index
    end
  end

  def search_cinemas
    @p = Cinema.ransack(params[:q])
  end

end
