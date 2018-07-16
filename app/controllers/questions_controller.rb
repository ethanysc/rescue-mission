class QuestionsController < ApplicationController
  def index
    @questions = Question.all.order(created_at: :asc)
  end
end
