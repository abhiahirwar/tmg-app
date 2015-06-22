class AddfiledsToStudentId < ActiveRecord::Migration
  def up
  	add_column :student_ids, :image_file_name, :string
  	add_column	:student_ids, :image_content_type, :string
  	add_column	:student_ids, :image_file_size, :integer
  	add_column	:student_ids, :image_updated_at, :datetime
  end

  def down
  	remove_column	:student_ids, :image_updated_at
  	remove_column	:student_ids, :image_file_size
  	remove_column	:student_ids, :image_content_type
  	remove_column	:student_ids, :image_file_name
  end
end
