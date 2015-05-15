class Test < ActiveRecord::Base
	has_many :questions
	# has_many :users

	accepts_nested_attributes_for :questions, :allow_destroy => true
end
