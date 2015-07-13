class AddQualificationStatusToEnrolment < ActiveRecord::Migration
  def up
    add_column :enrolments, :completed_qualification_status, :boolean
  end

  def down
    remove_colimn :enrolments, :completed_qualification_status
  end
end
