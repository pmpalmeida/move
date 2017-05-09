class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end


rails generate migration AddNameToUsers name:string
rails generate migration Addis_femaleToUsers is_female:boolean, default: false
rails generate migration AddAdminToUsers admin:boolean, default: false
