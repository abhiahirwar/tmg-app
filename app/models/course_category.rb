class CourseCategory < ActiveRecord::Base
	validates :title, presence: true, uniqueness: true
	has_many :enrolments
	has_many :courses
end

