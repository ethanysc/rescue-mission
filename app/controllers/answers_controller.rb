class AnswersController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @answers = @question.answers.order(created_at: :desc)
    @answer = Answer.new
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new(answer_params)
binding.pry
    if @answer.save
      flash[:success] = "Answer submitted successfully."
      redirect_to new_question_answer_path(@question)
    else
      flash[:alert] = "Failed to save answer."
      @answers = @question.answers.order(created_at: :desc)
      render :new
    end
  end

  def update
    binding.pry
  end

  private

  def answer_params
    params
      .require(:answer)
      .permit(:description)
  end
end
