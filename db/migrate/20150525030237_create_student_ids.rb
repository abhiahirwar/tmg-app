class CreateStudentIds < ActiveRecord::Migration
  def change
    create_table :student_ids do |t|
      t.string :title
      t.string :image
      t.string :category
      t.integer :enrolment_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
