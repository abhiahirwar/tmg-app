class AddFieldsToStudent < ActiveRecord::Migration
  def up
    add_column :students, :have_usi, :boolean
  end

  def down
    remove_column :students, :have_usi
  end
end
