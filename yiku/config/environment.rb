# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Yiku::Application.initialize!

class String
  def is_binary_data?
    ( self.count( "^ -~", "^\r\n" ).fdiv(self.size) > 0.3 || self.index( "\x00" ) ) unless empty?
  end
end

DB_STRING_MAX_LENGTH = 255
HTML_TEXT_FIELD_SIZE = 15
