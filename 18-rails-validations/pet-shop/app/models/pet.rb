class Pet < ApplicationRecord
  belongs_to :species
  belongs_to :owner

  def self.sorted_by_list_price
    all.sort_by {|pet| -pet.list_price}
  end

  def list_price
    price * (species.rare ? 2 : 1)
  end
end
