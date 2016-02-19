class CreateRaffleitems < ActiveRecord::Migration
  def change
    create_table :raffleitems do |t|
      t.string :name
      t.integer :ticket
      t.references :raffle, index: true

      t.timestamps null: false
    end
    add_foreign_key :raffleitems, :raffle
  end
end
