require 'rails_helper'

RSpec.describe "language_culture_diversities/new", type: :view do
  before(:each) do
    assign(:language_culture_diversity, LanguageCultureDiversity.new(
      :birth_country => "MyString",
      :home_language => "MyString",
      :english_level => "MyString"
    ))
  end

  it "renders new language_culture_diversity form" do
    render

    assert_select "form[action=?][method=?]", language_culture_diversities_path, "post" do

      assert_select "input#language_culture_diversity_birth_country[name=?]", "language_culture_diversity[birth_country]"

      assert_select "input#language_culture_diversity_home_language[name=?]", "language_culture_diversity[home_language]"

      assert_select "input#language_culture_diversity_english_level[name=?]", "language_culture_diversity[english_level]"
    end
  end
end
