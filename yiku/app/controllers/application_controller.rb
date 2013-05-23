class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :check_logged_in
  
  include ApplicationHelper
  
  # Protect a page from unauthorized access.
  def check_logged_in
      unless logged_in?
        # Follow http://stackoverflow.com/questions/6805547/authlogic-rails-3-1
        # x = request.url
        # y = request.fullpath
        session[:protected_page] = request.fullpath
        flash[:notice] = "Please log in first"
        redirect_to "/yiku/user/login"
        return false
      end
  end
  
end
