json.array!(@schools) do |school|
  json.extract! school, :id, :highest_school_level, :year, :secondary_school
  json.url school_url(school, format: :json)
end
