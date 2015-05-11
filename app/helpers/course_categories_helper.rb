module CourseCategoriesHelper
	def course_categories_for_select
	  CourseCategory.all.collect { |m| [m.title, m.id] }
	end
end
