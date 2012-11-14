class ItemsController < ApplicationController
  
  def listsuits
    @suits = Suit.find(:all)
  end
  
  
  
end
