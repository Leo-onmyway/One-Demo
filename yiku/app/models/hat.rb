class Hat < ActiveRecord::Base
  
  has_attached_file :photo, :whiny => false, :styles => { :thumb => ["100x100>", :png], :small => ["100x100", :jpg], :original => ["400x400>", :jpg] }, :convert_options => {
      :thumb => "-bordercolor white -border 1x1 -alpha set -channel RGBA -fuzz 20% -fill none -floodfill +0+0 white -shave 1x1" }
      
  validates :price, :numericality => { :only_integer => true, :message => "only number allowed" }
  
end
