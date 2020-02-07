require_relative '../modules/representable'

class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :album

  include Representable

  def duration_in_seconds
    convert_seconds_to_minutes(self.duration)
  end
end