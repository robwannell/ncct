class CreateReceptions < ActiveRecord::Migration
  def change
    create_table :receptions do |t|
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
