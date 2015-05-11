class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :highest_school_level
      t.string :year
      t.string :secondary_school

      t.timestamps null: false
    end
  end
end
