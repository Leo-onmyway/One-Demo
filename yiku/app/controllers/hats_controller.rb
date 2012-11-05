class HatsController < ApplicationController
  
  # show list of articles
  def showlist
    @hats = Hat.find(:all)
    idList = Array.new(@hats.size)
    
    i = 0
    for hat in @hats     
      idList[i] = hat.id
      i += 1 
    end
    
    # unless session[:idList]
      session[:idList] = idList
    # end
    
    if @hats.empty?
      puts "Nothing Displayed"
    end
       
  end
  
  # create an empty article
  def new
    @hat = Hat.new
  end
  
  # make article persistent 
  def create
    
    # uploaded_io = params[:hat][:image_url]
    # File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
       # file.write(uploaded_io.read)
    # end
    
    # params[:hat][:image_url] = "/uploads/" + uploaded_io.original_filename
    @hat = Hat.new(params[:hat])
    @hat.save
    
    redirect_to "/yiku/hat/showlist/"
  end
  
  # view details of article
  def view    
    idCurrEntry = params[:id].split(",")
    
    @hat = Hat.find(idCurrEntry[0])
    idx = Integer(idCurrEntry[1])
    @idPrevEntry = idx-1 >= 0 ? [session[:idList][idx-1], idx-1]  : [-1, -1]
    @idNextEntry = session[:idList][idx+1] != nil ? [session[:idList][idx+1], idx+1] : [-1, -1] 
    
  end
  
  # edit information of article
  def edit
    @hat = Hat.find(params[:id])
  end
  
  # update edited information
  def update
    @hat = Hat.find(params[:hat][:id])
    @hat.update_attributes(params[:hat])
    redirect_to "/yiku/hat/view&#{@hat.id}"
  end
  
  # remove article
  def delete
    @hat = Hat.find(params[:id])
    @hat.destroy
    redirect_to "/yiku/hat/showlist/"
  end
  
end
