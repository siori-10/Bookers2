class UsersController < ApplicationController


  def index
    @user = current_user
    @book = Book.new
    @users = User.all

  end

  def show
    @book =Book.new
    @user = User.find(params[:id])
    @books = @user.books

  end

  def edit
    @user = User.find(params[:id])
    if @user == current_user
      render"edit"
    else
      redirect_to user_path(current_user)
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    flash[:notice]="You have updated user successfully."
    if @user.save
    redirect_to user_path(@user.id)
    else
      render :edit
    end
  end
  # ↑pathを考える必要がある

private

def user_params
  params.require(:user).permit(:name, :profile_image, :introduction)
end




end
