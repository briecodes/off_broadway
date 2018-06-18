class CreateScripts < ActiveRecord::Migration[5.2]
  def change
    create_table :scripts do |t|
      t.string :title
      t.integer :user_id
      t.string :line_1
      t.string :line_2
      t.string :line_3
      t.string :line_4
      t.string :line_5

      t.timestamps
    end
  end
end
