class ItemsController < ApplicationController
   

  def showhome
    @user = User.find(session[:user_id])
  end
  
  def listsuits
    @user = User.find(session[:user_id])
    @suits = Suit.find(:all)
  end
  
end
