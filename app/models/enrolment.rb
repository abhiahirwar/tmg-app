class Enrolment < ActiveRecord::Base
  belongs_to :course
  belongs_to :student
  belongs_to :address
  belongs_to :postal_address
  belongs_to :employer
  belongs_to :emergency_contact
  belongs_to :emergency_contact1, class_name: 'EmergencyContact'
  belongs_to :language_culture_diversity
  belongs_to :school
  belongs_to :employment
  belongs_to :vic_student
  belongs_to :user
  belongs_to :course_category

  accepts_nested_attributes_for :student, :address, :employment, :employer, :emergency_contact, 
  															:school, :language_culture_diversity, :vic_student, :postal_address,
  															:emergency_contact1
end
