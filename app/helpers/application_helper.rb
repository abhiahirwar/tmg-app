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
		if user_signed_in?
			if current_user.pre_training_reviews.count > 0
				progress = 20
			end
			if current_user.enrolments.count > 0
				progress = 40
			end
		end
		"#{progress}%"
	end

	def enrolment_step
		step = "Start Online Application"
		if user_signed_in?
			if current_user.pre_training_reviews.count != 0
				step = "Complete Enrolment Details"
			elsif (current_user.enrolments.count == 0) && (current_user.pre_training_reviews.count != 0)
				step = "Continue Pre Training Review"
			end
		end
		step
	end

	 def bootstrap_class_for flash_type
    { success: "alert-success", error: "alert-danger", alert: "alert-warning", notice: "alert-info" }[flash_type] || flash_type.to_s
  end
 
  def flash_messages(opts = {})
    flash.each do |msg_type, message|
      concat(content_tag(:div, message, class: "alert #{bootstrap_class_for(msg_type)} fade in") do 
              concat content_tag(:button, 'x', class: "close", data: { dismiss: 'alert' })
              concat message 
            end)
    end
    nil
  end
end
