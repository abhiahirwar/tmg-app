require 'rails_helper'

RSpec.describe Employment, type: :model do
  let(:employment) { build(:employment) }

  context 'validation' do
    it{ is_expected.to validate_presence_of(:employment_status) }
  end
end
