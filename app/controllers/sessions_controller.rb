class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(user_name: params[:session][:user_name])
    if user && user.password == params[:session][:password]
      session[:user_id] = user.id
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
