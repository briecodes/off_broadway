class ProductionSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :a_character_id, :b_character_id, :script_id, :img_url
end
