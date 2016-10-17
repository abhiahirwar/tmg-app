require 'rails_helper'

describe Address do
  let(:address) { build(:address) }

  context 'validation' do
    it { is_expected.to validate_presence_of(:street1) }
    it { is_expected.to validate_presence_of(:suburb) }
    it { is_expected.to validate_presence_of(:postcode) }
    it { is_expected.to validate_presence_of(:state) }
  end

  context 'database columns' do
    it { is_expected.to have_db_column(:street1).of_type(:string).with_options(:null => false) }
    it { is_expected.to have_db_column(:suburb).of_type(:string).with_options(:null => false) }
    it { is_expected.to have_db_column(:postcode).of_type(:string).with_options(:null => false) }
    it { is_expected.to have_db_column(:state).of_type(:string).with_options(:null => false) }
  end

  describe '.full_address' do
    it 'returns a full address as a string' do
      expect(address.full_address).to eq("Property Name Street1 Street2 Yass Nsw 3025")
    end
    it 'returs no double space if one parameter is missing' do
      address.property_name = ''
      expect(address.full_address).to eq("Street1 Street2 Yass Nsw 3025")
    end

  end

end
