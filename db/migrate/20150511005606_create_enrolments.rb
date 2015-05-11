class CreateEnrolments < ActiveRecord::Migration
  def change
    create_table :enrolments do |t|
      t.references :course, index: true
      t.string :delivery_mode
      t.references :student, index: true
      t.references :address, index: true
      t.references :employer, index: true
      t.references :emergency_contact, index: true
      t.references :emergency_contact1, references: :emergency_contact
      t.references :language_culture_diversity, index: true
      t.references :school, index: true
      t.references :employment, index: true
      t.references :vic_student, index: true
      t.string :completed_quqlification
      t.string :qualication_received_location
      t.string :vet
      t.string :toc
      t.references :postal_address, references: :address

      t.timestamps null: false
    end
    add_foreign_key :enrolments, :courses
    add_foreign_key :enrolments, :students
    add_foreign_key :enrolments, :addresses
    add_foreign_key :enrolments, :employers
    add_foreign_key :enrolments, :emergency_contacts
    add_foreign_key :enrolments, :language_culture_diversities
    add_foreign_key :enrolments, :schools
    add_foreign_key :enrolments, :employments
    add_foreign_key :enrolments, :vic_students
  end
end
