require 'rails_helper'

RSpec.describe "students/index", type: :view do
  before(:each) do
    assign(:students, [
      Student.create!(
        :title => "Title",
        :surname => "Surname",
        :firstname => "Firstname",
        :middlename => "Middlename",
        :home_phone => "Home Phone",
        :mobile => "Mobile",
        :email => "Email",
        :city_of_birth => "City Of Birth",
        :usi => "Usi",
        :disability => "Disability",
        :aus_citizen => "Aus Citizen",
        :study_reason => "Study Reason"
      ),
      Student.create!(
        :title => "Title",
        :surname => "Surname",
        :firstname => "Firstname",
        :middlename => "Middlename",
        :home_phone => "Home Phone",
        :mobile => "Mobile",
        :email => "Email",
        :city_of_birth => "City Of Birth",
        :usi => "Usi",
        :disability => "Disability",
        :aus_citizen => "Aus Citizen",
        :study_reason => "Study Reason"
      )
    ])
  end

  it "renders a list of students" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Surname".to_s, :count => 2
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Middlename".to_s, :count => 2
    assert_select "tr>td", :text => "Home Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Mobile".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "City Of Birth".to_s, :count => 2
    assert_select "tr>td", :text => "Usi".to_s, :count => 2
    assert_select "tr>td", :text => "Disability".to_s, :count => 2
    assert_select "tr>td", :text => "Aus Citizen".to_s, :count => 2
    assert_select "tr>td", :text => "Study Reason".to_s, :count => 2
  end
end
