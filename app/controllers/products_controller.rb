class ProductsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy, :edit, :update]
  before_filter :correct_user,   only: [:destroy, :edit, :update]

  def index
    if params[:search]
      @products = Product.find(:all, :conditions => ['name LIKE ? or description LIKE ?', "%#{params[:search]}%", "%#{params[:search]}%"])
    end
  end

  def create
    @product = current_user.products.build(params[:product])
    if not @product.save
      @feed_items = []
    end
    redirect_to root_url
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(params[:product])
      flash[:success] = "Item Successfully Updated"
      redirect_to current_user
    else
      render 'edit'
    end
  end

  def destroy
    @product.destroy
    redirect_to current_user
  end

  private

    def correct_user
      @product = current_user.products.find_by_id(params[:id])
      redirect_to root_url if @product.nil?
    end
end