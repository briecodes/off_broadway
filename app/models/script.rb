class Script < ApplicationRecord
    belongs_to :user
    has_many :productions
end
