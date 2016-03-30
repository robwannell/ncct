class CreateSuccessStories < ActiveRecord::Migration
  def change
    create_table :success_stories do |t|
      t.string :name
      t.string :title
      t.text :content
      t.integer :ranking

      t.timestamps null: false
    end
  end
end
