class AddColumns < ActiveRecord::Migration
  def up
  	add_column :lunches, :when, :time
  end

  def down
  end
end
