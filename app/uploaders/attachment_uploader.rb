# frozen_string_literal: true

# AttachmentUploader Carrierwave
class AttachmentUploader < CarrierWave::Uploader::Base
  # Include RMagick or MiniMagick support:
  include CarrierWave::RMagick
  include CarrierWave::ImageOptimizer

  # include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog
  # process :optimize
  # process quality: 40

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # def size_range
  #   return_size_type(file.content_type)
  # end

  # version :thumb do
  #   process resize_to_fit: [200, 200]
  # end
  # Provide a default URL as a default if there hasn't been a file uploaded:

  # Process files as they are uploaded:
  # process :scale => [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  # version :thumb do
  #   process :resize_to_fit => [50, 50]
  # end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  # def extension_white_list
  #   %w(jpg jpeg gif png)
  # end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details
  # def filename
  #   "something.jpg" if original_filename
  # end
  # private

  # def return_size_type(file)
  #   return 0..1.megabytes if file.include?('image')
  #   0..10.megabytes
  # end
end
