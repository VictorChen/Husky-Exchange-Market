class ProductsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  before_filter :correct_user,   only: :destroy

  def create
    @product = current_user.products.build(params[:product])
    if not @product.save
      @feed_items = []
    end
    redirect_to root_url
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