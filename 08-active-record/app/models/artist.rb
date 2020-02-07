class Artist < ActiveRecord::Base
  has_many :songs
  has_many :albums, through: :songs
  belongs_to :main_instrument
end