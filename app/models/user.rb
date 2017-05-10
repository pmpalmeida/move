class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_one :pprofile
  has_many :citypresences
  has_many :cities, through: :citypresences

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end



