class Owner < ApplicationRecord
    has_many :pets
    validates :name, presence: true, uniqueness: true
    validates :animal_capacity, presence: { message: "is required." }, numericality: { only_integer: true, message: "must be an integer, \"%{value}\" is not an integer" }

    def has_capacity?
        animal_capacity > pets.size
    end

end
