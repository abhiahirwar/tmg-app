class LabeledFormBuilder < ActionView::Helpers::FormBuilder
  delegate :content_tag, :tag, to: :@template
  
  %w[text_field text_area password_field date_select collection_select grouped_collection_select select email_field file_field].each do |method_name|
    define_method(method_name) do |name, *args|
      content_tag :div, class: "form-group" do
        (field_label(name, *args)) + 
        (content_tag :div, class: "col-sm-8" do 
          super(name, *args)
        end)
      end
    end
  end

  def check_box(name, *args)
    content_tag :div, class: "control-group" do
      (field_label(name, *args)) + 
      (content_tag :div, class: "controls" do 
        content_tag :label do
          super(name, class: 'ace') +
          (content_tag :span, class: "lbl" do 
            ""
          end)
        end
      end)  
    end
  end

  def collection_check_boxes(attribute, records, record_id, record_name)
    content_tag :div, class: "control-group" do
      @template.hidden_field_tag("#{object_name}[#{attribute}][]") +
      records.map do |record|
        element_id = "#{object_name}_#{attribute}_#{record.send(record_id)}"
        checkbox = @template.check_box_tag("#{object_name}[#{attribute}][]", record.send(record_id),  object.send(attribute).include?(record.send(record_id)), id: element_id)
        checkbox + " " + @template.label_tag(element_id, record.send(record_name))
      end.join(tag(:br)).html_safe
    end
  end
  
  def error_messages
    if object.errors.full_messages.any?
      content_tag(:div, :class => "error_messages") do
        content_tag(:h2, "Invalid Fields") +
        content_tag(:ul) do
          object.errors.full_messages.map do |msg|
            content_tag(:li, msg)
          end.join.html_safe
        end
      end
    end
  end
  
private

  def field_label(name, *args)
    options = args.extract_options!
    required = object.class.validators_on(name).any? { |v| v.kind_of? ActiveModel::Validations::PresenceValidator }
    required ? "control-label required" : "control-label"
    label(name.to_s.titleize, options[:label], class: (required ? "col-sm-3 control-label required" : "col-sm-3 control-label") )
  end

  def field_textarea(name, *args)
    text_area(name, options[:text_area], class: "controls")
  end
  
  def objectify_options(options)
    super.except(:label)
  end

end