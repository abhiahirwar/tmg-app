require 'rails_helper'

RSpec.describe Course, type: :model do
  let(:course) { build(:course) }
  let(:course_category) { build(:course_category) }

  context 'validation' do
    it{ is_expected.to validate_presence_of(:name) }
  end

  context 'assotiation' do
    it{ is_expected.to belong_to(:course_category) }
  end

  context 'uniqueness' do
    let(:duplicate_course) { course.dup }

    before do
      course.save
    end

    it 'needs to have unique course' do
      expect(duplicate_course).to be_invalid
    end
  end

end
