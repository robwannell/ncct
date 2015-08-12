class CreateBoardmembers < ActiveRecord::Migration
  def change
    create_table :boardmembers do |t|
      t.string :name
      t.string :title
      t.text :body
      t.integer :rank

      t.timestamps null: false
    end
  end
end
