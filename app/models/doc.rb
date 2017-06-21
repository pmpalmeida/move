class Doc < ApplicationRecord
  belongs_to :pprofile

  mount_uploader :photo_front, DocPhotoUploader
  mount_uploader :photo_back, DocPhotoUploader
  mount_uploader :photo1, DocPhotoUploader
  mount_uploader :photo2, DocPhotoUploader

end
