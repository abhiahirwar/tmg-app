require 'rails_helper'

RSpec.describe "students/show", type: :view do
  before(:each) do
    @student = assign(:student, Student.create!(
      :title => "Title",
      :surname => "Surname",
      :firstname => "Firstname",
      :middlename => "Middlename",
      :home_phone => "Home Phone",
      :mobile => "Mobile",
      :email => "Email",
      :city_of_birth => "City Of Birth",
      :usi => "Usi",
      :disabiltiy => "Disabiltiy",
      :aus_citizen => "Aus Citizen",
      :study_reason => "Study Reason"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Surname/)
    expect(rendered).to match(/Firstname/)
    expect(rendered).to match(/Middlename/)
    expect(rendered).to match(/Home Phone/)
    expect(rendered).to match(/Mobile/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/City Of Birth/)
    expect(rendered).to match(/Usi/)
    expect(rendered).to match(/Disabiltiy/)
    expect(rendered).to match(/Aus Citizen/)
    expect(rendered).to match(/Study Reason/)
  end
end
