class ApplicationMailer < ActionMailer::Base
  default from: "tmgit@tmg.edu.au"
  layout 'mailer'
  before_filter :add_inline_attachment!
  private
  def add_inline_attachment!
    attachments.inline['sign-img.jpg'] = File.read(File.join(Rails.root,'app','assets','images','logo','sign-img.jpg'))
  end
end
