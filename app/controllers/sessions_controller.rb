class SessionsController < ApplicationController
  def new
    redirect_to '/' if session[:name]
  end

  def create
    if valid_name?
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end
end
