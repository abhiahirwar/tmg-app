class AddCloumnToEnrolment < ActiveRecord::Migration
  def up
    add_column  :enrolments, :user_id, :integer, references: :users
    add_index		:enrolments, :user_id
  end
  def down
  	remove_column :enrolments, :user_id
  end
end
