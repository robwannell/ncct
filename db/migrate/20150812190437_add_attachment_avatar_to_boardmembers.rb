class AddAttachmentAvatarToBoardmembers < ActiveRecord::Migration
  def self.up
    change_table :boardmembers do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :boardmembers, :avatar
  end
end
