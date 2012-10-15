class TopsController < ApplicationController
  
  # show list of articles
  def showlist
    @tops = Top.find(:all)

    if @tops == nil
      puts "nil"
    end
    
    if @tops.empty?
      puts "Nothing"
    end
       
  end
  
  # create an empty article
  def new
    @top = Top.new
  end
  
  # make article persistent 
  def create
    
    @top = Top.new(params[:top])
    @top.save
    
    redirect_to "/yiku/top/showlist/"
  end
  
  # view details of article
  def view
    @top = Top.find(params[:id])
  end
  
  # edit information of article
  def edit
    @top = Top.find(params[:id])
  end
  
  # update edited information
  def update
    @top = Top.find(params[:Top][:id])
    @top.update_attributes(params[:Top])
    redirect_to "/yiku/top/view&#{@top.id}"
  end
  
  # remove article
  def delete
    @top = Top.find(params[:id])
    @top.destroy
    redirect_to "/yiku/top/showlist/"
  end
  
end
