class Book < ApplicationRecord
  belongs_to :pprofile

  mount_uploader :photo1, BookPhotoUploader
  mount_uploader :photo2, BookPhotoUploader
  mount_uploader :photo3, BookPhotoUploader
  mount_uploader :photo4, BookPhotoUploader
  mount_uploader :photo5, BookPhotoUploader
  mount_uploader :photo6, BookPhotoUploader
  mount_uploader :photo7, BookPhotoUploader

end
