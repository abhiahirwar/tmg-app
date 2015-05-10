class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :question
      t.references :user, index: true
      t.text :content

      t.timestamps null: false
    end
    add_foreign_key :answers, :users
  end
end
