class RenameStudentsFields < ActiveRecord::Migration
  def up
    rename_column :students, :disabiltiy, :disability
  end
  def down
    rename_column :students, :disability, :disabiltiy
  end
end

