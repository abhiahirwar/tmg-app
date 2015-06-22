class Address < ActiveRecord::Base
	validates  :street1, :suburb, :postcode, :state, presence: true
end
