class ProductsController < ApplicationController
  before_filter :signed_in_user

  def create
    @product = current_user.products.build(params[:product])
    if @product.save
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
  end
end