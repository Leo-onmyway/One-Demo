class Bottom < ActiveRecord::Base
  
    has_attached_file :photo, :styles => { :thumb => ["100x100>", :png], :original => ["400x400>", :jpg] }, :whiny => false

end
