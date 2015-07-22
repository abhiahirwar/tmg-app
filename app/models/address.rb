class Address < ActiveRecord::Base
	validates  :street1, :suburb, :postcode, :state, presence: true
  def full_address
    [property_name, street1, street2, suburb, state, postcode].reject(&:blank?).join(" ").titleize
  end
end
