class AddDisplayToRaffle < ActiveRecord::Migration
  def change
    add_column :raffle, :display, :boolean
  end
end
