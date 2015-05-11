module CoursesHelper
	def course_for_select
	  Course.all.collect { |m| [m.name, m.id] }
	end

	# def delivery_mode_for_select
	# 	['Distance', 'Classroom']
	# end
	
	def delivery_mode_for_select (courses)
		if !courses.empty?
			arr = courses.split(',').collect! {|n| n.to_i}
		else
			arr = []
		end
	end
end
