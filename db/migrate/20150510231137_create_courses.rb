class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :code
      t.references :course_category, index: true
      t.decimal :fee_for_service
      t.decimal :vet_fee
      t.decimal :gov_funded
      t.decimal :concession_gov_funded
      t.decimal :material_cost
      t.decimal :transfer_fee
      t.decimal :re_issue_certificate
      t.string :delivery_mode
      t.string :location_of_delivery
      t.string :study_duration

      t.timestamps null: false
    end
    add_foreign_key :courses, :course_categories
  end
end
