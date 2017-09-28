class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def add_to_cart
    @product = Product.find(params[:id])
    if current_cart.products.include?(@product)
      flash[:warning] = "您的购物车中已经有此商品"
    else
      current_cart.add_product_to_cart(@product)
      flash[:notice] = "成功将 #{@product.title} 加入购物车"
    end 
    redirect_to :back
  end
end
