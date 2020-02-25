class Pet < ApplicationRecord
  belongs_to :species
  belongs_to :owner

  validate :owner_has_capacity

  def owner_has_capacity
    if owner.present? && !owner.has_capacity?
      errors.add(:owner, "#{owner.name} cannot accept any more pets")
    end
  end

  def self.sorted_by_list_price
    all.sort_by {|pet| -pet.list_price}
  end

  def list_price
    price * (species.rare ? 2 : 1)
  end
end
