class Student < ActiveRecord::Base
	validates :surname, :title, :firstname, :dob, :mobile, :email, :city_of_birth, :aus_citizen, :study_reason, presence: true
end
