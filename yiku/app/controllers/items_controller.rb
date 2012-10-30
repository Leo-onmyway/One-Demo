class ItemsController < ApplicationController
  
  def listsuit
    @suits = Suit.find(:all)
  end
  
end
