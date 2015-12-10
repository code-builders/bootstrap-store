class ProductsController < ApplicationController
  before_action :authorize_admin, except: [:index]

  def index
    @products = Product.all
  end

  def new
  end

  def create

  end

  def edit

  end
end
