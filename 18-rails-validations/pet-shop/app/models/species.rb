class Species < ApplicationRecord
    has_many :pets, dependent: :destroy

    validates :name, presence: true, length: { minimum: 2 }

    validates :size, inclusion: { in: %w(small medium large),
        message: "%{value} is not one of small, medium or large." }

    validate :name_and_size_cannot_be_taken

    def name_and_size_cannot_be_taken
        if name.present? && size.present? && Species.names_and_sizes.include?(name_and_size)
            errors.add(:name_and_size, 'must be unique')
        end
    end

    def name_and_size
        "#{name} - #{size}"
    end

    def self.names_and_sizes
        all.map{|species| species.name_and_size}
    end

    def self.names
        all.map{|species| species.name}
    end
    
end
