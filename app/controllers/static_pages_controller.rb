class StaticPagesController < ApplicationController
	 before_action :authenticate_user!, :except => [:home]
	def home
	end

	def help
	end

	def lln_test
		@enrolment_id = params['enrolment_id']
	end

	def ids
	end

	def review
		 @enrolment = Enrolment.find(params['enrolment_id'])
	end

	def course_review
		# @enrolment = params['enrolment_id']
	end

	def success
	end

	def enrolment_form
	end
end
