class EnrolmentMailer < ApplicationMailer
	default from: 'noreply@tmg.edu.au'
  default bcc: "abhiindiaus@gmail.com"
  default bcc: "tmgit@tmg.edu.au"

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
end
