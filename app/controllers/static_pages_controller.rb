class StaticPagesController < ApplicationController
	 before_action :authenticate_user!, :except => [:home]
	def home
	end

	def help
	end

	def lln_test
	end

	def ids
	end

	def review
	end

	def course_review
	end
end
