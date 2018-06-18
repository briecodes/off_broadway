class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :cv
      t.string :img_url

      t.timestamps
    end
  end
end
