class ApplicationController < ActionController::Base
  protect_from_forgery

  protected
  def current_cart
    cart_id = session[:cart_id]
      if cart_id
        cart=Cart.find(cart_id)
      else
        cart = Cart.create
        session[:cart_id] = cart.id
      end
    return cart
  end
end
