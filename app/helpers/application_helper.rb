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

  def form_field(field_label, field_value ='',options={})
    content_tag :div, class: "form-field" do
      content_tag(:div, field_label, class: "field-label") +
      content_tag(:div, field_value.try(:humanize), class: "field-value")
    end
  end

  def form_two_fields(field_label1, field_label2,field_value1='', field_value2='',options={})
    content_tag :div, class: "form-fields" do
      content_tag(:div, field_label1, class: "field-label1") +
      content_tag(:div, field_value1.try(:humanize), class: "field-value1") +
      content_tag(:div, field_label2, class: "field-label2") +
      content_tag(:div, field_value2.try(:humanize), class: "field-value2")
    end
  end

  def bootstrap_class_for flash_type
     case flash_type
      when "success"
        "alert-success"   # Green
      when "error"
        "alert-danger"    # Red
      when "alert"
        "alert-warning"   # Yellow
      when "notice"
        "alert-info"      # Blue
      else
        flash_type.to_s
    end
  end
end
