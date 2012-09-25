class Product < ActiveRecord::Base
  #belongs_to :category 
  # has_attached_file :photo
  has_attached_file :photo, :styles => { :thumb => ["100x100>", :png] }, :whiny => false  
  # has_attached_file :photo, :styles => { :small => "150x150>" }
end
