class Employment < ActiveRecord::Base
  validates :employment_status, presence: true
end
