class RenamePretrainingReviewFields < ActiveRecord::Migration
  def up
  	rename_column	:pre_training_reviews, :speical_condition, :special_condition
  end
  def down
  	rename_column	:pre_training_reviews, :special_condition, :speical_condition
  end
end
