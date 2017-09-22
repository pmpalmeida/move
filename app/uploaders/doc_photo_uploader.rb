class DocPhotoUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick # <- Notice this

  storage :fog                    # <- and this

  def default_url
    'defaultfemale.png'
  end

  version :thumb do
    resize_to_fill 100, 100
  end



end
