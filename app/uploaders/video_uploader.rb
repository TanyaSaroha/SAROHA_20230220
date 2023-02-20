class VideoUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  include CarrierWave::Video::Thumbnailer

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{model.id}/main_file/"
  end

  def extension_allowlist
    %w(mp4 mov webm)
  end

  version :thumb do
    process thumbnail: [{format: 'png', quality: 10, size: 256, strip: true, logger: Rails.logger}]
  
    def full_filename for_file
      png_name for_file, version_name
    end
  end
  
  def png_name for_file, version_name
    %Q{#{version_name}_#{for_file.chomp(File.extname(for_file))}.png}
  end

  version :thumb_128, from_version: :thumb do
    process resize_to_fill: [128, 128]
  end

  version :thumb_64, from_version: :thumb do
    process resize_to_fill: [64, 64]
  end

end
