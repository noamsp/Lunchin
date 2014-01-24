class AddIndex < ActiveRecord::Migration
  def up
  	add_index(:lunches, :where)
  end

  def down
  end
end
