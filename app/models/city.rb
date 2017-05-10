class City < ApplicationRecord

  has_many :citypresences
  has_many :users, through: :citypresences
end


