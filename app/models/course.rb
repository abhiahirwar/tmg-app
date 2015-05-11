class Course < ActiveRecord::Base
  belongs_to :course_category

  def delivery_mode_to_array
		arr = delivery_mode.split(', ')
		arr.map(&:capitalize)
	end
end
