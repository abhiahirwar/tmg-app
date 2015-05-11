json.array!(@vic_students) do |vic_student|
  json.extract! vic_student, :id, :vsn, :latest_school, :previous_school
  json.url vic_student_url(vic_student, format: :json)
end
