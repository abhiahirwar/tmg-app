class AddColumnToAnswer < ActiveRecord::Migration
  def up
    add_column :answers, :test_id, :integer
  end

  def down
    remove_column :answers, :test_id
  end
end
