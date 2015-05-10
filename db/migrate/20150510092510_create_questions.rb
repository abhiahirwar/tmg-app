class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.text :content
      t.references :form, index: true

      t.timestamps null: false
    end
    add_foreign_key :questions, :forms
  end
end
