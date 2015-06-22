class StudentId < ActiveRecord::Base
	belongs_to :user
	belongs_to	:enrolment
	# mount_uploader :image, IdUploader
	validates :enrolment, presence: true
	# validates :image, presence: true
	validates :title, presence: true
	has_attached_file :image,
    :storage => :google_drive,
    :google_drive_credentials => "#{Rails.root}/config/google_drive.yml",
    :google_drive_options => {
      :path => proc { |style| "#{style}_#{enrolment_id}_#{title}_#{id}_#{random_name}" },
      :public_folder_id => '0B4QFjHfJ3wAFfm9GY3NWdXlNX2dZQmQzRzZTOGtHSFJ6eVNUTEh0al9RUTk5aG1MT0E3ZFE'
    }

  def enrolment_id
  	self.enrolment.id
  end

  def random_name
    (0...8).map { (65 + rand(26)).chr }.join
  end
end
