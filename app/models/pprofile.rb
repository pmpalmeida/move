class Pprofile < ApplicationRecord

  belongs_to :user, optional: true

  has_one :doc, dependent: :destroy
  has_one :book, dependent: :destroy


  has_one :pprofile_photo

end


