require 'rails_helper'

RSpec.describe Answer, type: :model do
  let(:user) { build(:user) }
  let(:question) { build(:question) }

  context 'association' do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to belong_to(:question) }
  end
end