class Blog < ActiveRecord::Base
  mount_uploader :file, BlogUploader
end
