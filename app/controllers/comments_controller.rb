class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    # redirect_to "/cinemas/#{comment.cinema.id}"
    redirect_to cinema_path(comment.cinema_id)
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    if comment.destroy
      redirect_to cinema_path(comment.cinema_id)
    else
      render root_path
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content).merge(user_id: current_user.id, cinema_id: params[:cinema_id])
  end
end
