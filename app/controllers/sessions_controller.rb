class SessionsController < ApplicationController
  def new
  end

  def create
    p params
    p params[:name]
    if params[:name] != nil && params[:name] != ""
      session[:name] = params[:name]
      redirect_to '/'
    else
      redirect_to '/sessions/new'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/'
  end
end
