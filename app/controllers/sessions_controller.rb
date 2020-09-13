class SessionsController < ApplicationController

  def new
    
  end

  def create
    #binding.pry
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to :root
    else
      redirect_to :login
    end

  end

  def destroy
    session.delete :name
    redirect_to :login
  end
end
