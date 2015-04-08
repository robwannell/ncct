class AddPhotoToAlbum < ActiveRecord::Migration
  def change
    remove_column :albums, :cover
    add_column :albums, :photo_id, :integer
  end
end
