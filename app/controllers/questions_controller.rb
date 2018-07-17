class QuestionsController < ApplicationController
  def index
    @questions = Question.all.order(created_at: :asc)
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      redirect_to :controller => 'answer', :action => 'new', notice: "You succesfully submitted a Question you Jabroni!"
    else
      @errors = @question.errors.full_messages.join(', ')
      render action: 'new'
    end
  end

  private

  def question_params
    params
      .require(:question)
      .permit(:title, :description)
  end
end
