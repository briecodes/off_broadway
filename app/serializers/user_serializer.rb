class UserSerializer < ActiveModel::Serializer
    attributes :username, :password, :password_digest

    has_many :scripts
    has_many :productions
end