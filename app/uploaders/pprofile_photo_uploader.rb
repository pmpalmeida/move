class PprofilePhotoUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick # <- Notice this

  storage :fog                    # <- and this




# default URL caso nao haja foto
  def default_url
    'defaultfemale.png'
  end

  version :standard do
    resize_to_fill 400, 300
  end

  version :small do
    resize_to_fill 80, 60
  end

  version :cover do
    resize_to_fill 800, 450
  end

  version :home do
    resize_to_fill 200, 200
  end

  version :label do
    resize_to_fill 40, 40
  end

end


