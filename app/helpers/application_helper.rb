module ApplicationHelper

	#Returns the full title on a per-page basis.
	def full_title(page_title = '')
		base_title = "TMG App"
		if page_title.empty?
			base_title
		else
			"#{page_title} | #{base_title}"
		end
	end

	def body_id
    [controller_name, action_name].join('-')
  end

  def labeled_form_for(object, options = {}, &block)
	  options[:builder] = LabeledFormBuilder
	  options[:html] = {:class => "form-horizontal"}
	  form_for(object, options, &block)
	end

	def enrolment_progress
		progress = 0
		if current_user.pre_training_reviews.count != 0
			progress = 20
		elsif current_user.enrolments.count != 0
			progress = 0
		end
		"#{progress}%"
	end

	def enrolment_step
		step = "Start Online Application"
		if current_user.pre_training_reviews.count != 0
			step = "Continue Pre Training Review"
		elsif (current_user.enrolments.count == 0) && (current_user.pre_training_reviews.count != 0)
			step = "Complete Enrolment Details"
		end
		step
	end
end
