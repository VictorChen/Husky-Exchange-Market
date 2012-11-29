class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @products = @user.products.paginate(:page => params[:page], :per_page => 12)
  end

  def new
  	@user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to Husky Exchange Market!"
      redirect_to @user
    else
      render 'new'
    end
  end
end