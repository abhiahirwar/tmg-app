class Question < ActiveRecord::Base
  belongs_to :form
  has_many :answers
end
