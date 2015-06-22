class EmergencyContact < ActiveRecord::Base
	validates :contact_name, :relationship, :mobile, presence: true
end
