require 'rails_helper'

RSpec.describe Employer, type: :model do
  let(:employer) { build(:employer) }

  context 'validation' do
    it { is_expected.to validate_presence_of(:trading_name) }
    it { is_expected.to validate_presence_of(:contact_name) }
    it { is_expected.to validate_presence_of(:training_address) }
    it { is_expected.to validate_presence_of(:phone) }
  end
end
