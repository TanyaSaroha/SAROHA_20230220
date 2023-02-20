class Video < ApplicationRecord
  belongs_to :category

  mount_uploader :file, VideoUploader

  validates :title, :file, presence: true

  validate :file_size

  def file_size
    errors.add :file, message: "should be less than 200MB" if file && file.size > 200.megabytes
  end
end
