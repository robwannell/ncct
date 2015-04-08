class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :title
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :fax
      
      t.string :staff1_firstname
      t.string :staff1_lastname
      t.string :staff1_title
      
      t.string :staff2_firstname
      t.string :staff2_lastname
      t.string :staff2_title
      
      t.text :requirements
      t.text :body
      
      t.timestamps null: false
    end
  end
end
