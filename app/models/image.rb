class Image < ActiveRecord::Base
	mount_uploader :image, IdUploader
end
