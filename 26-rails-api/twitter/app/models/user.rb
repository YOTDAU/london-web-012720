class User < ApplicationRecord

    has_many :tweets

    validates :handle, uniqueness: true

    def at_handle
        "@#{handle}"
    end 
end
