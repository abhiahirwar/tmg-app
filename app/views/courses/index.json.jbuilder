json.array!(@courses) do |course|
  json.extract! course, :id, :name, :code, :course_category_id, :fee_for_service, :vet_fee, :gov_funded, :concession_gov_funded, :material_cost, :transfer_fee, :re_issue_certificate, :delivery_mode, :location_of_delivery, :study_duration
  json.url course_url(course, format: :json)
end
