class AnswersController < ApplicationController
  before_action :authenticate_lawyer!
  before_action :ensure_admin, only: :destroy

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new(question_id: params[:question_id])
  end

  def create
    @answer = Answer.create(answer_params)
    @answer.lawyer_id = current_lawyer.id
    @answer.save
    flash[:notice] = 'Your answer was successfully created!'

    redirect_to question_path(@answer.question)
  end

  def destroy
    @answer = Answer.find(params[:id])
    @question = @answer.question
    @answer.destroy

    flash[:notice] = 'Answer deleted successfully!'
    redirect_to question_path(@question)
  end

  private
    def answer_params
      params.require(:answer).permit(:title, :content, :estimated_fee, :estimated_time, :question_id)
    end
end
