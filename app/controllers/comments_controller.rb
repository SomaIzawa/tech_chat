class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    redirect_to "/questions/#{comment.question.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:comment).merge(user_id: current_user.id, question_id: params[:question_id])
  end
end
