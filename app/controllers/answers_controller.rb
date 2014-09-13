class AnswersController < ApplicationController
  before_action :authenticate_lawyer!
  before_action :ensure_admin, only: :destroy

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.create(answer_params)
    @answer.lawyer_id = current_lawyer.id
    @answer.save
    flash[:notice] = 'Your answer was successfully created!'

    redirect_to question_path(@question)
  end

  def destroy
    @question = Question.find(params[:question_id])
    @answer = @question.answers.find(params[:id])
    @answer.destroy

    flash[:notice] = 'Answer deleted successfully!'
    redirect_to question_path(@question)
  end

  private
    def answer_params
      params.require(:answer).permit(:title, :content, :estimated_fee, :estimated_time)
    end

    def ensure_admin
      unless current_lawyer.admin?
        redirect_to root_url
      end
    end
end
