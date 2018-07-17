class QuestionsController < ApplicationController
  def index
    @questions = Question.all.order(created_at: :asc)
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      # redirect_to :controller => 'answer', :action => 'new', notice: "You succesfully submitted a Question you Jabroni!"
      redirect_to new_question_answer_path(@question), notice: 'Question created.'
    else
      @errors = @question.errors.full_messages.join(', ')
      render action: 'new'
    end
  end

  def edit
    @question = Question.find(params[:question_id])

  end

  def update
    @question = Question.find(pararms[:question_id])
    @question.update(question_params)

    @errors = @question.errors

    if @errors.empty?
      redirect_to new_question_answer_path(@question), notice: "Question edited!"
    else
      @errors_messages = @question.errors.full_messages.join(', ')
      render action: 'edit'
    end
  end

  private

  def question_params
    params
      .require(:question)
      .permit(:title, :description)
  end
end
