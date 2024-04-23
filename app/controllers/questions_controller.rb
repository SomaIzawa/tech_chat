class QuestionsController < ApplicationController
  before_action :set_question, only: [:edit, :show]

  def index
    @questions = Question.includes(:user).includes(:comments)
  end

  def new
    @question = Question.new
  end

  def create
    Question.create(question_params)
    redirect_to '/'
  end

  def show
    @comment = Comment.new
    @comments = @question.comments.includes(:user)
  end

  private
  def question_params
    params.require(:question).permit(:title, :content, :name)
  end

  def set_question
    @question = Question.find(params[:id])
  end
end
