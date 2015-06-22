require 'rails_helper'

RSpec.describe "images/show", type: :view do
  before(:each) do
    @image = assign(:image, Image.create!(
      :name => "Name",
      :image => "Image",
      :category => "Category",
      :enrolment_id => 1,
      :user_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
