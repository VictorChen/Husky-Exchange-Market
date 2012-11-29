class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @product  = current_user.products.build
      @feed_items = current_user.feed
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
