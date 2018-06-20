class Actor < ApplicationRecord
    has_many :casts
    has_many :productions, through: :casts
end
