require 'rails_helper'

RSpec.describe EmergencyContact, type: :model do
  let(:emergency_contact) { buid(:emergency_contact) }

  context 'validation' do
    it{ is_expected.to validate_presence_of(:contact_name) }
    it{ is_expected.to validate_presence_of(:relationship) }
    it{ is_expected.to validate_presence_of(:mobile) }
  end

end
