class CreateActors < ActiveRecord::Migration[5.2]
  def change
    create_table :actors do |t|
      t.string :name
      t.string :cv
      t.string :img_url

      t.timestamps
    end
  end
end
