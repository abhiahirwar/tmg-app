json.array!(@language_culture_diversities) do |language_culture_diversity|
  json.extract! language_culture_diversity, :id, :birth_country, :home_language, :english_level
  json.url language_culture_diversity_url(language_culture_diversity, format: :json)
end
