require 'rails_helper'

RSpec.describe "images/edit", type: :view do
  before(:each) do
    @image = assign(:image, Image.create!(
      :name => "MyString",
      :image => "MyString",
      :category => "MyString",
      :enrolment_id => 1,
      :user_id => 1
    ))
  end

  it "renders the edit image form" do
    render

    assert_select "form[action=?][method=?]", image_path(@image), "post" do

      assert_select "input#image_name[name=?]", "image[name]"

      assert_select "input#image_image[name=?]", "image[image]"

      assert_select "input#image_category[name=?]", "image[category]"

      assert_select "input#image_enrolment_id[name=?]", "image[enrolment_id]"

      assert_select "input#image_user_id[name=?]", "image[user_id]"
    end
  end
end
