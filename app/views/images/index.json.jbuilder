json.array!(@images) do |image|
  json.extract! image, :id, :name, :image, :category, :enrolment_id, :user_id
  json.url image_url(image, format: :json)
end
