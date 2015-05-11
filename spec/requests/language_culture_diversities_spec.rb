require 'rails_helper'

RSpec.describe "LanguageCultureDiversities", type: :request do
  describe "GET /language_culture_diversities" do
    it "works! (now write some real specs)" do
      get language_culture_diversities_path
      expect(response).to have_http_status(200)
    end
  end
end
