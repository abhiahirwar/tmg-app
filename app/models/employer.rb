class Employer < ActiveRecord::Base
  validates :trading_name, :contact_name, :training_address, :phone, presence: true
end
