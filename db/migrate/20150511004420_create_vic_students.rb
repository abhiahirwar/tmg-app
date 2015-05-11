class CreateVicStudents < ActiveRecord::Migration
  def change
    create_table :vic_students do |t|
      t.string :vsn
      t.string :latest_school
      t.string :previous_school

      t.timestamps null: false
    end
  end
end
