class CreateBios < ActiveRecord::Migration
  def change
    create_table :bios do |t|
      t.string :name
      t.string :position
      t.text :story
      t.integer :rank

      t.timestamps null: false
    end
  end
end
