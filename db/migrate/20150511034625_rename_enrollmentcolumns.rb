class RenameEnrollmentcolumns < ActiveRecord::Migration
  def up
  	rename_column :enrolments, :completed_quqlification, :completed_qualification
  	rename_column :enrolments, :qualication_received_location, :qualification_received_location
  end

  def down
  	rename_column :enrolments, :completed_qualification, :completed_quqlification
  	rename_column :enrolments, :qualification_received_location, :qualication_received_location
  end
end
