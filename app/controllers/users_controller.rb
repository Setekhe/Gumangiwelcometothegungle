class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to '/users/signed_up'
    else
      render 'new'
    end
  end

  def signed_up
  end

  def user_params
    params.require(:user).permit(:user_name, :display_name, :password)
  end
end
