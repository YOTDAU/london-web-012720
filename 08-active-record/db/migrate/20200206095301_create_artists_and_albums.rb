class CreateArtistsAndAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :name
    end

    create_table :albums do |t|
      t.string :title
      t.integer :artist_id
    end
  end
end
