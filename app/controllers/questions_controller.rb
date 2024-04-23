class QuestionsController < ApplicationController
  def index
    @questions = Question.includes(:user)
  end

  def new
    @question = Question.new
  end

  def create
    Question.create(question_params)
    redirect_to '/'
  end

  private
  def question_params
    params.require(:question).permit(:title, :content, :name)
  end
end
