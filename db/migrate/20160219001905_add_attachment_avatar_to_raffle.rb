class AddAttachmentAvatarToRaffle < ActiveRecord::Migration
  def self.up
    change_table :raffle do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :raffle, :avatar
  end
end
