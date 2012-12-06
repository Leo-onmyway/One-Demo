# A module is a place where cross-layer methods could be defined, normally utility function
# Later this module could get mixin with the classes which needs these utility function
module ApplicationHelper
  
  def logged_in?
    session[:user_id]
  end
  
end
