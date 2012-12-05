class Product < ActiveRecord::Base
  attr_accessible :category, :description, :name, :price
  belongs_to :user

  validates :name, presence: true
  validates :category, presence: true
  validates :user_id, presence: true
  default_scope order: 'products.created_at DESC'

  def self.search(search)
    if params[:search]
      @products = Product.find(:all)
    end
  end
end
