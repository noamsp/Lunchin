class CreateLunchUsers < ActiveRecord::Migration
def change
    create_table :lunchusers do |t|
      t.integer :lunch_id, :null => false
      t.integer :user_id, :null => false

      t.timestamps
    end
  end
end
