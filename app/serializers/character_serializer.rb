class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :cv, :img_url
end
