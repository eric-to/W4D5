class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.text :summary, null: false
      t.integer :user_id, null: false
      t.boolean :private, default: false
      t.boolean :complete, default: false

      t.timestamps
    end
    
    add_index :goals, :user_id
    add_index :goals, :summary
  end
end
