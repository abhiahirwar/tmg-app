require 'rails_helper'

RSpec.describe CourseCategory, type: :model do
  let(:course_category) { build(:course_category) }

  context 'validation' do
    it { is_expected.to validate_presence_of(:title) }
  end

  context 'assotiation' do
    it { is_expected.to have_many(:enrolments) }
    it { is_expected.to have_many(:courses) }
  end

  context 'uniqueness' do
    let(:duplicate_course_category) { course_category.dup }

    before do
      course_category.save
    end

    it 'needs to have unique course category' do
      expect(duplicate_course_category).to be_invalid
    end
  end
end
