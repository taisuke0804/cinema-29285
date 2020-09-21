class ProfilesController < ApplicationController

  def index

  end

  def new
    @favorite = Favorite.new
  end

end
