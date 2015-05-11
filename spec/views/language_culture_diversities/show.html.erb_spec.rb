require 'rails_helper'

RSpec.describe "language_culture_diversities/show", type: :view do
  before(:each) do
    @language_culture_diversity = assign(:language_culture_diversity, LanguageCultureDiversity.create!(
      :birth_country => "Birth Country",
      :home_language => "Home Language",
      :english_level => "English Level"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Birth Country/)
    expect(rendered).to match(/Home Language/)
    expect(rendered).to match(/English Level/)
  end
end
