class SessionsController < ApplicationController

    def new 
    end 

    def create
        if !params[:name].present?
            redirect_to "/login"
        else 
            session[:name] = params[:name]
        end 
    end 

    def destroy
        if session[:name].present?
            session.delete :name
        end 
    end 
end 