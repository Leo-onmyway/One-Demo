class SuitsController < ApplicationController
  
  def compose
    arr = params[:comId].split(",");
    if !arr[0].eql?("-1") 
       @hat = Hat.find(arr[0]);
    end
    if !arr[1].eql?("-1")
       @top = Top.find(arr[1]);
    end
    if !arr[2].eql?("-1")
       @bottom = Bottom.find(arr[2]);
    end
    if !arr[3].eql?("-1")
       @shoe = Shoe.find(arr[3]);
    end
    @suit = Suit.new;
  end
  
  def create
    @suit = Suit.new(params[:suit])
    @suit.save
    #flash[:notice] = 'Photo was successfully created.'
    redirect_to "/yiku/suit/compose&"+
                params[:suit][:hat_id]+','+
                params[:suit][:top_id]+','+
                params[:suit][:bottom_id]+','+
                params[:suit][:shoes_id];               
  end
  
end
