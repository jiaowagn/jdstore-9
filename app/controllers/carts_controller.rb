class CartsController < ApplicationController
  def clean
    current_cart.clean!
    redirect_to carts_path, alert: "已清空整个购物车"
  end

  def checkout
    @order  = Order.new
  end 

end
