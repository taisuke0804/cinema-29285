class ProfilesController < ApplicationController
  before_action :move_to_index, except: [:index]

  def index
    @favorite = Favorite.find_by(user_id: current_user.id)
    unless @favorite
      redirect_to new_profile_path
    end
    
    user = User.find(current_user.id)
    @cinemas = user.cinemas.order("created_at DESC")
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
    @user = User.find(params[:id])
    @favorite = @user.favorite
    unless @favorite
      redirect_to new_profile_path
    end

    # @user = Cinema.find(params[:id])
    # @cinemas = @user.cinemas.order("created_at DESC")
  end

  def edit
    @favorite = Favorite.find_by(user_id: current_user.id)
  end

  def update
    @favorite = Favorite.find_by(user_id: current_user.id)
    @favorite.update(favorite_params)
    if @favorite.save
      redirect_to root_path
    else
      render :edit
    end
  end


  private
  def favorite_params
    params.require(:favorite).permit(
      :movie_1, :movie_2, :movie_3, :movie_4, :movie_5, :movie_6, :movie_7, :movie_8, :movie_9, :movie_10, :actor_1, :actor_2, :actor_3, :actor_4, :actor_5, :director_1, :director_2, :director_3, :profile
    ).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in? 
      redirect_to action: :index
    end
  end

end
