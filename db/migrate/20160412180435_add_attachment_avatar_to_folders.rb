class AddAttachmentAvatarToFolders < ActiveRecord::Migration
  def self.up
    change_table :folders do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :folders, :avatar
  end
end
