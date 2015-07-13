class AddDisabilityStatusToStudent < ActiveRecord::Migration
  def up
    add_column :students, :disability_status, :boolean
  end

  def down
    remove_column :students, :disability_status
  end
end
