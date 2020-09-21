class ProfilesController < ApplicationController

  def index
    @favorite = Favorite.find_by(user_id: current_user.id)
    #@favorite = favorite(current_user.id)
  end

  def new
    @favorite = Favorite.new
  end

  def create
    @favorite = Favorite.new(favorite_params)
    if @favorite.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    #@favorite = Favorite.find(params[:id])
  end

  private
  def favorite_params
    params.require(:favorite).permit(
      :movie_1, :movie_2, :movie_3, :movie_4, :movie_5, :movie_6, :movie_7, :movie_8, :movie_9, :movie_10, :actor_1, :actor_2, :actor_3, :actor_4, :actor_5, :director_1, :director_2, :director_3, :profile
    ).merge(user_id: current_user.id)
  end

end
