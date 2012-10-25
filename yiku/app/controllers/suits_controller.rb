class SuitsController < ApplicationController
  
  def new
    @suit = Suit.new
  end
  
end
