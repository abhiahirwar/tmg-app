class AddFiledToCourse < ActiveRecord::Migration
  def up
    add_column :courses, :course_review_document, :string
  end

  def down
  	remove_column	:courses, :course_review_document
  end
end
