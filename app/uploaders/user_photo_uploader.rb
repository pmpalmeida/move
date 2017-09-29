class UserPhotoUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick # <- Notice this

  storage :fog                    # <- and this

  def default_url
    'defaultfemale.png'
  end

  version :standard do
    resize_to_fill 400, 300
  end

  version :thumb do
    resize_to_fill 100, 100
  end

   version :home do
    resize_to_fill 200, 200
  end

  version :label do
    resize_to_fill 40, 40
  end

end



