class CreateEmployments < ActiveRecord::Migration
  def change
    create_table :employments do |t|
      t.string :employment_status
      t.string :recent_occupation
      t.string :industry

      t.timestamps null: false
    end
  end
end
