require 'rails_helper'

RSpec.describe "language_culture_diversities/index", type: :view do
  before(:each) do
    assign(:language_culture_diversities, [
      LanguageCultureDiversity.create!(
        :birth_country => "Birth Country",
        :home_language => "Home Language",
        :english_level => "English Level"
      ),
      LanguageCultureDiversity.create!(
        :birth_country => "Birth Country",
        :home_language => "Home Language",
        :english_level => "English Level"
      )
    ])
  end

  it "renders a list of language_culture_diversities" do
    render
    assert_select "tr>td", :text => "Birth Country".to_s, :count => 2
    assert_select "tr>td", :text => "Home Language".to_s, :count => 2
    assert_select "tr>td", :text => "English Level".to_s, :count => 2
  end
end
