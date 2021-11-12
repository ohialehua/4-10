class UsersController < ApplicationController
  def index
    @users = User.all
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to 'users'
  end

  def show
    @user = User.find(params[:id])
    @books = Book.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to 'users'
  end

  private

  def user_params
  params.require(:user).permit(:name, :profile_image, :introduction)
  end
  def book_params
  params.permit(:title, :opinion)
  end
end
