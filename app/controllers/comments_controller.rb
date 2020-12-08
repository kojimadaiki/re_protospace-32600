class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_path)
    if @comment.save
      redirect_to prototype_path(@comment.prototype_id)
    else
      redirect_to "/prototypes/#{@comment.prototype_id}"
    end
  end

  private
  def comment_path
    params.require(:comment).permit(:text).merge(user_id: current_user.id , prototype_id: params[:prototype_id])
  end
end
