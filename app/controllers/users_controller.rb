class UsersController < ApplicationController
  def index
    @users = User.all
    @books = Book.all
    @user = current_user
    @book = Book.new
  end

  def new
    @book = Book.new
  end

  def show
    @user = User.find(params[:id])
    @books = Book.all
    @book = Book.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  private

  def user_params
  params.require(:user).permit(:name, :profile_image, :introduction)
  end
  def book_params
  params.require(:book).permit(:title, :opinion)
  end
end
