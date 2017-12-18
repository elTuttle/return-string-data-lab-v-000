class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def inventory
    product = Product.find(params[:id])
    if product.inventory > 0
      render plain: true
    else
      render plain: false
    end
  end

  def description
    product = Product.find(params[:id])
    render plain: product.description
  end

end
