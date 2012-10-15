class BottomsController < ApplicationController
  
  # show list of articles
  def showlist
    @bottoms = Bottom.find(:all)

    if @bottoms == nil
      puts "nil"
    end
    
    if @bottoms.empty?
      puts "Nothing"
    end
       
  end
  
  # create an empty article
  def new
    @bottom = Bottom.new
  end
  
  # make article persistent 
  def create
    
    @bottom = Bottom.new(params[:bottom])
    @bottom.save
    
    redirect_to "/yiku/bottom/showlist/"
  end
  
  # view details of article
  def view
    @bottom = Bottom.find(params[:id])
  end
  
  # edit information of article
  def edit
    @bottom = Bottom.find(params[:id])
  end
  
  # update edited information
  def update
    @bottom = Bottom.find(params[:Bottom][:id])
    @bottom.update_attributes(params[:Bottom])
    redirect_to "/yiku/bottom/view&#{@bottom.id}"
  end
  
  # remove article
  def delete
    @bottom = Bottom.find(params[:id])
    @bottom.destroy
    redirect_to "/yiku/bottom/showlist/"
  end
  
end

