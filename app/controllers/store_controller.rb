class StoreController < ApplicationController
  def index
    @smarts = Smart.all
    @page_title = "Shopping"

    @cart = current_cart

  end

end
