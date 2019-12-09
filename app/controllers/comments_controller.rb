class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment: comment_params[:comment], exhibit_id: comment_params[:exhibit_id], user_id: current_user.id)
    # binding.pry
    redirect_to root_path
  end

  private
  def comment_params
    params.require(:comment).permit(:comment, :exhibit_id).merge(user_id: current_user.id)
  end
end