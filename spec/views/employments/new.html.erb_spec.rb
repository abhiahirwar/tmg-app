require 'rails_helper'

RSpec.describe "employments/new", type: :view do
  before(:each) do
    assign(:employment, Employment.new(
      :employment_status => "MyString",
      :recent_occupation => "MyString",
      :industry => "MyString"
    ))
  end

  it "renders new employment form" do
    render

    assert_select "form[action=?][method=?]", employments_path, "post" do

      assert_select "input#employment_employment_status[name=?]", "employment[employment_status]"

      assert_select "input#employment_recent_occupation[name=?]", "employment[recent_occupation]"

      assert_select "input#employment_industry[name=?]", "employment[industry]"
    end
  end
end
