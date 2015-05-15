class AddColumnToQuestion < ActiveRecord::Migration
  def up
    add_column :questions, :test_id, :integer
  end
  def down
    remove_column :questions, :test_id
  end
end
