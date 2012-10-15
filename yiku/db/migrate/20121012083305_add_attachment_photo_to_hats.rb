class AddAttachmentPhotoToHats < ActiveRecord::Migration
  def self.up
    change_table :hats do |t|
      t.has_attached_file :photo
    end
  end

  def self.down
    drop_attached_file :hats, :photo
  end
end
