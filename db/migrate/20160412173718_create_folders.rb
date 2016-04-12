class CreateFolders < ActiveRecord::Migration
  def change
    create_table :folders do |t|
      t.string :description
      t.integer :ranking

      t.timestamps null: false
    end
  end
end
