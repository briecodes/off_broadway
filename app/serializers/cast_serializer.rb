class CastSerializer < ActiveModel::Serializer
    attributes :actor_id, :production_id

    belongs_to :actor
    belongs_to :production
end