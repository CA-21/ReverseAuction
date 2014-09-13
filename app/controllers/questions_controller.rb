class QuestionsController < ApplicationController

  def index
    @questions = Question.paginate(page: params[:page], per_page: 10)
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  def edit
    @question = Question.find(params[:id])
  end

  def create

    @question = Question.new(question_params)

    if verify_recaptcha(:model => @question, :message => "Oh! It's error with reCAPTCHA!") && @question.save
      redirect_to @question
    else
      render 'new'
    end
  end

  def update
    @question = Question.find(params[:id])

    if @question.update(question_params)
      redirect_to @question
    else
      render 'edit'
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy

    redirect_to questions_path
  end

  private
    def question_params
      params.require(:question).permit(:title, :content, :city, :email, :phone)
    end

end
