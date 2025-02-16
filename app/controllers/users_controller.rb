class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = Users.new(users_params)
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
    def users_params
      params.require(:user).permit(:username, :password)
    end
end
