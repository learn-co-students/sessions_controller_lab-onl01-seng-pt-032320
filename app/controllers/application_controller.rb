class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :valid_name
  def valid_name?
    params[:name] && !params[:name].empty?
  end

  def hello
    if !session[:name]
      redirect_to '/login'
    end
  end

end