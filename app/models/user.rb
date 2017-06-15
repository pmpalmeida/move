class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable


  mount_uploader :photo, UserPhotoUploader

  has_one :pprofile, dependent: :destroy
  has_many :citypresences
  has_many :cities, through: :citypresences

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end





