class LanguageCultureDiversity < ActiveRecord::Base
	validates :birth_country, :home_language, :english_level, presence: true
end
