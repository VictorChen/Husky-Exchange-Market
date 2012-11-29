class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @product  = current_user.products.build
      @feed_items = Product.paginate(:page => params[:page], :per_page => 6)
    else
      @feed_items = Product.find(:all, :limit => 9)
    end
  end

  def sales
  end

  def housing
  end

  def employment
  end

  def services
  end

  def events
  end

  def community
  end

  def contact
  end
end
