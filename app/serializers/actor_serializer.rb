class ActorSerializer < ActiveModel::Serializer
  attributes :name, :cv, :img_url, :id

  has_many :casts
  has_many :productions, through: :casts
end
