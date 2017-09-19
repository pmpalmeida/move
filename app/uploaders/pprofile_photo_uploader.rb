class PprofilePhotoUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick # <- Notice this

  storage :fog                    # <- and this

  version :standard do
    resize_to_fill 400, 300
  end

  version :small do
    resize_to_fill 80, 60
  end

  version :cover do
    resize_to_fill 800, 450
  end

end


