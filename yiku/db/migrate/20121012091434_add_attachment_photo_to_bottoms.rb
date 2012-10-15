class AddAttachmentPhotoToBottoms < ActiveRecord::Migration
  def self.up
    change_table :bottoms do |t|
      t.has_attached_file :photo
    end
  end

  def self.down
    drop_attached_file :bottoms, :photo
  end
end
