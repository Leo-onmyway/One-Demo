class ShoesController < ApplicationController
    
  # show list of articles
  def showlist
    @shoes = Shoe.find(:all)

    if @shoes == nil
      puts "nil"
    end
    
    if @shoes.empty?
      puts "Nothing"
    end
       
  end
  
  # create an empty article
  def new
    @shoe = Shoe.new
  end
  
  # make article persistent 
  def create
    
    @shoe = Shoe.new(params[:shoe])
    @shoe.save
    
    redirect_to "/yiku/shoe/showlist/"
  end
  
  # view details of article
  def view
    @shoe = Shoe.find(params[:id])
  end
  
  # edit information of article
  def edit
    @shoe = Shoe.find(params[:id])
  end
  
  # update edited information
  def update
    @shoe = Shoe.find(params[:Shoe][:id])
    @shoe.update_attributes(params[:Shoe])
    redirect_to "/yiku/shoe/view&#{@shoe.id}"
  end
  
  # remove article
  def delete
    @shoe = Shoe.find(params[:id])
    @shoe.destroy
    redirect_to "/yiku/shoe/showlist/"
  end
  
end

