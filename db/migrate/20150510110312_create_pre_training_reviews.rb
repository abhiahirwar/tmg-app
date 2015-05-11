class CreatePreTrainingReviews < ActiveRecord::Migration
  def change
    create_table :pre_training_reviews do |t|
      t.string :rpl
      t.string :credit_transfer
      t.string :area_of_work
      t.string :employment
      t.string :pathway
      t.string :preferred_learning_style
      t.string :delivery_mode
      t.string :speical_condition
      t.boolean :toc
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :pre_training_reviews, :users
  end
end
