json.array!(@employments) do |employment|
  json.extract! employment, :id, :employment_status, :recent_occupation, :industry
  json.url employment_url(employment, format: :json)
end
