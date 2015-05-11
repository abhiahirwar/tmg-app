json.array!(@enrolments) do |enrolment|
  json.extract! enrolment, :id, :course_id, :delivery_mode, :student_id, :address_id, :employer_id, :emergeny_contact_id, :language_culture_diversity_id, :school_id, :employment_id, :vic_student_id, :completed_quqlification, :qualication_received_location, :vet, :toc
  json.url enrolment_url(enrolment, format: :json)
end
