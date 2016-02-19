class CreateRaffle < ActiveRecord::Migration
  def change
    create_table :raffle do |t|
      t.string :name
      t.datetime :date
      t.text :description

      t.timestamps null: false
    end
  end
end
