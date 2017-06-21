class PprofilePhoto < ApplicationRecord
  belongs_to :pprofile

  mount_uploader :photo1, PprofilePhotoUploader

end
