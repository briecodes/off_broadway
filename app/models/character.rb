class Character < ApplicationRecord
    has_many :productions
    has_many :scripts, through: :productions
end
