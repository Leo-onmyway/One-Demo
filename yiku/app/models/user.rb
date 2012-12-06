class User < ActiveRecord::Base
  
  # attr_accessor
  #attr_accessor :remember_me
  attr_accessor :current_password
  
  # Constant
  # Max & min lengths for all fields
  USER_NAME_MIN_LENGTH = 4
  USER_NAME_MAX_LENGTH = 20
  PASSWORD_MIN_LENGTH = 6
  PASSWORD_MAX_LENGTH = 12
  EMAIL_MAX_LENGTH = 40  
  
  # Text box sizes for display in the views
  USER_NAME_SIZE = 20
  PASSWORD_SIZE = 20
  EMAIL_SIZE = 30
  
  # validator 
  validates :user_id, :password, :email, :presence => true
  validates :password, :confirmation => true
  validates :user_id, :email, :uniqueness => true
  validates :user_id, :length => { :within => USER_NAME_MIN_LENGTH..USER_NAME_MAX_LENGTH }
  validates :password, :length => { :within => PASSWORD_MIN_LENGTH..PASSWORD_MAX_LENGTH }
  validates :email, :length => { :maximum => EMAIL_MAX_LENGTH }
  
  validates :user_id, :format => { :with => /^[A-Z0-9_]*$/i,
                                   :message => "must contain only letters, numbers, and underscores"
  }
  validates :email, :format => { :with => /^[A-Z0-9._%-]+@([A-Z0-9-]+\.)+[A-Z]{2,4}$/i,
                                 :message => "must be a valid email address" 
  }
  
  
  # Log a user in.
  def login!(session)
    session[:user_id] = id
  end
  
  # Log a user out.
  # A calss method identified by the self key in front of the method name
  def self.logout!(session)
    session[:user_id] = nil
  end
  
  # Clear the password (typically to suppress its display in a view).
  def clear_password!
    # Keep self key as Ruby lets define local variables that override the class attributes
    # Without self key would create a local variable called password with value nil
    self.password = nil
  end
  
end
