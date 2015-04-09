class CreateGraduates < ActiveRecord::Migration
  def change
    create_table :graduates do |t|
      t.integer :counter
      t.timestamps null: false
    end
  end
end
