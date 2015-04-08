class AddAttachmentAvatarToAnnouncements < ActiveRecord::Migration
  def self.up
    change_table :announcements do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :announcements, :avatar
  end
end
