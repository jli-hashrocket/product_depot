class StoreController < ApplicationController
  include CurrentCart
  include SessionCounter
  before_action :set_cart
  before_action :count_sessions, only: [:index]

  def index
    @products = Product.order(:title)
    @sessions_count = session[:counter]
  end
end
