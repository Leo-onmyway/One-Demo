class StylerController < ApplicationController
  
  def gallery
    @hats = Hat.find(:all)
    @tops = Top.find(:all)
    @bottoms = Bottom.find(:all)
    @shoes = Shoe.find(:all)
  end
  
end
