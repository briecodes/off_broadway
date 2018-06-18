class Production < ApplicationRecord
    belongs_to :user
    belongs_to :script
    belongs_to :character
end
