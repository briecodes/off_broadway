class CreateProductions < ActiveRecord::Migration[5.2]
  def change
    create_table :productions do |t|
      t.integer :user_id
      t.integer :script_id

      t.timestamps
    end
  end
end
