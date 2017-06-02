class AvatarUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick
  include Sprockets::Rails::Helper

  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :half do
    process :resize_to_fill => [120, 165]
  end

  version :profile_size do
    process :resize_to_fill => [241, 332]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

end
