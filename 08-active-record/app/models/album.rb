require_relative '../modules/representable'

class Album < ActiveRecord::Base

  include Representable

  has_many :songs
  has_many :artists, through: :songs

  def all_artists
    self.artists.uniq
  end

  def total_duration
    convert_seconds_to_minutes(self.songs.map {|song| song.duration}.sum) 
  end
end