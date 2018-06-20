class ProductionSerializer < ActiveModel::Serializer
    attributes :user_id, :script_id, :img_url, :id

    belongs_to :user
    belongs_to :script
    has_many :casts
    has_many :actors, through: :casts
end