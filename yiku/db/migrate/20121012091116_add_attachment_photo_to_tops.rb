class AddAttachmentPhotoToTops < ActiveRecord::Migration
  def self.up
    change_table :tops do |t|
      t.has_attached_file :photo
    end
  end

  def self.down
    drop_attached_file :tops, :photo
  end
end
