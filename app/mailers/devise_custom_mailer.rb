class DeviseCustomMailer < Devise::Mailer

  # helper :application # gives access to all helpers defined within `application_helper`.
  # include Devise::Controllers::UrlHelpers # Optional. eg. `confirmation_url`
  # default template_path: 'devise/mailer' # to make sure that your mailer uses the devise views

  layout 'mailer'

  before_filter :add_inline_attachment!

  # def confirmation_instructions(record)
  #   super
  # end

  # def reset_password_instructions(record)
  #   super
  # end

  # def unlock_instructions(record)
  #   super
  # end

  private
  def add_inline_attachment!
    attachments.inline['sign-img.jpg'] = File.read(File.join(Rails.root,'app','assets','images','logo','sign-img.jpg'))
  end
end