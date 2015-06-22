require 'rails_helper'

RSpec.describe "student_ids/index", type: :view do
  before(:each) do
    assign(:student_ids, [
      StudentId.create!(
        :title => "Title",
        :image => "Image",
        :category => "Category",
        :enrolment_id => 1,
        :user_id => 2
      ),
      StudentId.create!(
        :title => "Title",
        :image => "Image",
        :category => "Category",
        :enrolment_id => 1,
        :user_id => 2
      )
    ])
  end

  it "renders a list of student_ids" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
