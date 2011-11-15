require 'test_helper'

class CartTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "total_amount == 0 if the cart is empty" do
    cart = Cart.new
    total_amount = cart.total_amount
   # assert total_amount == 0
    assert_equal(0, total_amount, "total amount is not 0")
  end

  test "total_amount == sum of the smarts prices" do
    htc = Smart.create(:name => 'htc', :price => 10, :description => "." * 20, :image_url => "smart.jpg")
    atrix = Smart.create(:name => 'atrix', :price => 15, :description => "." * 20, :image_url => "smart.jpg")

    #creamos carrito vacio
    cart = Cart.create

    #agregamos lineas al carrito
    cart.line_items << LineItem.create(:smart => htc, :cart => cart)
    cart.line_items << LineItem.create(:smart => atrix, :cart => cart)

    assert_equal(25, cart.total_amount)
  end
end
