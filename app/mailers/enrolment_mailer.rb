class EnrolmentMailer < ApplicationMailer
  helper ApplicationHelper
	default from: 'tmgit@tmg.edu.au'
  default bcc: "abhiindiaus@gmail.com"
  default bcc: "tmgit@tmg.edu.au"
  layout 'mailer'
  before_filter :add_inline_attachment!
	def welcome_email(user)
    @user = user
    @url  = 'http://tmg.edu.au'
    mail(to: @user.email, subject: 'Welcome to Tmg Enrolment')
  end

  def enrolment_review_email(user, enrolment)
    @user = user
    @enrolment = enrolment
    @url  = 'http://tmg.edu.au'
    mail(to: @user.email, subject: 'Tmg Enrolment Summary')
  end

  private
  def add_inline_attachment!
    attachments.inline['sign-img.jpg'] = File.read(File.join(Rails.root,'app','assets','images','logo','sign-img.jpg'))
  end
end
