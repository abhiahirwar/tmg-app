json.array!(@students) do |student|
  json.extract! student, :id, :title, :surname, :firstname, :middlename, :dob, :home_phone, :mobile, :email, :city_of_birth, :usi, :disabiltiy, :aus_citizen, :study_reason
  json.url student_url(student, format: :json)
end
