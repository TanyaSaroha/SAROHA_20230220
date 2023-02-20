class Video < ApplicationRecord
  belongs_to :category

  mount_uploader :file, VideoUploader
end
