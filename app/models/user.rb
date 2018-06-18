class User < ApplicationRecord
    has_many :productions
    has_many :scripts
end
