class RenameColumn < ActiveRecord::Migration
  def up
  	rename_column :lunches, :description, :where
  end

  def down
  end
end
