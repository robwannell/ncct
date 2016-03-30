class AddPaperclipToSuccessStories < ActiveRecord::Migration
  def self.up
    change_table :success_stories do |t|
      t.attachment :avatar
    end
  end
  
  def self.down
    remove_attachment :success_stories, :avatar
  end
end
