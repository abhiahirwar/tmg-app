json.array!(@student_ids) do |student_id|
  json.extract! student_id, :id, :title, :image, :category, :enrolment_id, :user_id
  json.url student_id_url(student_id, format: :json)
end
