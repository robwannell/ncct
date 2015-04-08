class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.text :description
      

      t.timestamps null: false
    end
    
    add_column :albums, :slug, :string
    add_index :albums, :slug
    
  end
end
