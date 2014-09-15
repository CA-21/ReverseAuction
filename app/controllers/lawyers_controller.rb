class LawyersController < ApplicationController

  def index
    @lawyers = Lawyer.paginate(page: params[:page])
  end

  def show
    @lawyer = Lawyer.find(params[:id])

    if (@lawyer.admin?)
      redirect_to root_url
    end

    if (@lawyer.nil?)
      flash[:alert] = 'Lawyer with #{params[:id]} not found.'
      redirect_to lawyers_path
    end

  end

end
