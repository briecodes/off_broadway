class CreateApiV1Productions < ActiveRecord::Migration[5.2]
  def change
    create_table :api_v1_productions do |t|
      t.integer :user_id
      t.integer :a_character_id
      t.integer :b_character_id
      t.integer :script_id
      t.string :img_url

      t.timestamps
    end
  end
end
