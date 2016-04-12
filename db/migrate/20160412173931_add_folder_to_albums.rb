class AddFolderToAlbums < ActiveRecord::Migration
  def change
    add_reference :albums, :folder, index: true
    add_foreign_key :albums, :folders
  end
end
