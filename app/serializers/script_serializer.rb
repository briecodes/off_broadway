class ScriptSerializer < ActiveModel::Serializer
    attributes :title, :user_id, :line_1, :line_2, :line_3, :line_4, :line_5, :img_url, :id

    belongs_to :user
end