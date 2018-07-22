class UserSerializer < ActiveModel::Serializer
    attributes :username, :password, :password_digest, :id, :name

    has_many :scripts
    has_many :productions
end