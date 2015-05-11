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
end
