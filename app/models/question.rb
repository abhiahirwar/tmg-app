class Question < ActiveRecord::Base
  belongs_to :form
  belongs_to :test
  has_many :answers
  has_many :users, through: :answers

  accepts_nested_attributes_for :answers, :allow_destroy => true
end
