class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @product  = current_user.products.build
      @feed_items = Product.paginate(:page => params[:page], :per_page => 6)
    else
      @feed_items = Product.paginate(:page => params[:page], :per_page => 9)
    end
  end

  def sales
    @products  = Product.where(:category => ["electronics", "tickets", "books", "furnitures", "bikes", "tools", "games", "other"]).paginate(:page => params[:page], :per_page => 9)
  end

  def housing
    @products  = Product.where(:category => "housing").paginate(:page => params[:page], :per_page => 9)
  end

  def employment
    @products  = Product.where(:category => "employment").paginate(:page => params[:page], :per_page => 9)
  end

  def services
    @products  = Product.where(:category => "services").paginate(:page => params[:page], :per_page => 9)
  end

  def events
    @products  = Product.where(:category => "events").paginate(:page => params[:page], :per_page => 9)
  end

  def community
    @products  = Product.where(:category => "community").paginate(:page => params[:page], :per_page => 9)
  end

  def contact
  end
end
