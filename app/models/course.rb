class Course < ActiveRecord::Base
  belongs_to :course_category

  def delivery_mode_to_array
		arr = []
		if delivery_mode
			arr = delivery_mode.split(', ')
			arr.map(&:capitalize)
		end
		arr
	end
	validates :name, presence: true, uniqueness: true
end

