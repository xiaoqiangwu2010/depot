class StoreController < ApplicationController
  def index
    @products = Product.all
    @date = Date.current
    @time = Time.now
    
    if (session[:counter].nil?)
      session[:counter] = 1
    else
      session[:counter] += 1
    end
  end
end
