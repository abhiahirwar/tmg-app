class PreTrainingReview < ActiveRecord::Base
  belongs_to :user
  validates :employment, :pathway, :preferred_learning_style,:delivery_mode,:special_condition, presence: true
  validates :toc, :acceptance => {:accept => true}
end
