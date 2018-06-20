class Production < ApplicationRecord
    belongs_to :user
    belongs_to :script
    has_many :casts
    has_many :actors, through: :casts
end
