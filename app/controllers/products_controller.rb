class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def inventory
    product = Product.find(params[:id])
    if product.inventory > 0
      render plain: false
    else
      render plain: true
    end
  end

end
