class LunchUsers < ActiveRecord::Migration
  def change
    create_table :lunches_users, :id => false do |t|
      t.integer :lunch_id
      t.integer :user_id
    end
  end
end
