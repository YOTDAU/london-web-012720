class CreateArtistsAlbumsSongsAndMainInstrumentsTables < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :title
      t.integer :year
    end
    
    create_table :songs do |t|
      t.integer :duration
      t.string :title
      t.integer :album_id
      t.integer :artist_id
    end

    create_table :artists do |t|
      t.string :name
      t.integer :year_born
      t.integer :main_instrument_id
    end

    create_table :main_instruments do |t|
      t.string :type
    end
  end
end
