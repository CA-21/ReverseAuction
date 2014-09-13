class AnswersController < ApplicationController
  before_action :authenticate_lawyer!
  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.create(answer_params)
    @answer.lawyer_id = current_lawyer.id
    @answer.save

    redirect_to question_path(@question)
  end

  private
    def answer_params
      params.require(:answer).permit(:title, :content, :estimated_fee, :estimated_time)
    end
end
