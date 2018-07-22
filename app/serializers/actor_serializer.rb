class ActorSerializer < ActiveModel::Serializer
  attributes :name, :cv, :img_url, :id, :svg_url

  has_many :casts
  has_many :productions, through: :casts
end
