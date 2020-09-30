class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @favorite = @user.favorite
    # unless @favorite
    #   redirect_to root_path
    # end

    @cinemas = @user.cinemas.order("created_at DESC")
  end
end
