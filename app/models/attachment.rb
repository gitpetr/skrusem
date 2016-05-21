class Attachment < ActiveRecord::Base
  belongs_to  :adminka
  mount_uploader :file, FileUploader
end
