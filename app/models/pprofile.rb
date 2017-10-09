class Pprofile < ApplicationRecord

  belongs_to :user, optional: true

  belongs_to :city, optional: true

  has_one :doc, dependent: :destroy


  #has_one :book, dependent: :destroy
  #has_one :pprofile_photo


  mount_uploader :photo_profile, PprofilePhotoUploader
  mount_uploader :photo1, PprofilePhotoUploader
  mount_uploader :photo2, PprofilePhotoUploader
  mount_uploader :photo3, PprofilePhotoUploader
  mount_uploader :photo4, PprofilePhotoUploader
  mount_uploader :photo5, PprofilePhotoUploader
  mount_uploader :photo6, PprofilePhotoUploader
  mount_uploader :photo7, PprofilePhotoUploader

end


