class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :title
      t.string :surname
      t.string :firstname
      t.string :middlename
      t.date :dob
      t.string :home_phone
      t.string :mobile
      t.string :email
      t.string :city_of_birth
      t.string :usi
      t.string :disabiltiy
      t.string :aus_citizen
      t.string :study_reason

      t.timestamps null: false
    end
  end
end
