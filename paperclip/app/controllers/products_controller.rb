class ProductsController < ApplicationController
  
  def new
    @product = Product.new
    
  end
  
  def create 
    @product = Product.new(params[:product])
    @product.save
    
    redirect_to "/products/showlist/"
  end
  
  def showlist
    @products = Product.find(:all)
  end
  
  def view
    @product = Product.find(params[:id])
  end
  
end
