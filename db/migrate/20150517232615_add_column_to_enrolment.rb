class AddColumnToEnrolment < ActiveRecord::Migration
  def up
    add_column :enrolments, :course_category_id, :integer
  end

  def down
  	remove_column :enrolments, :course_category_id
  end
end
