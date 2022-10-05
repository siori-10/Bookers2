class UsersController < ApplicationController
  def new
  end

  def index
  end

  def show
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(user.id)
  end
  # ↑pathを考える必要がある

private

def user_params
  params.require(:user).permit(:name, :profile_image)
end
end
