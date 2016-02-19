class AddItemnumberToRaffleitems < ActiveRecord::Migration
  def change
    add_column :raffleitems, :itemnumber, :integer
  end
end
