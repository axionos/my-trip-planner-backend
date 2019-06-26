class User < ApplicationRecord
  # has_many :patients, through: :appointments
  has_many :trips
  has_many :days, through: :trips
  has_many :items, through: :trips

  validates :username, presence: true
  validates :username, uniqueness: true

  has_secure_password
end
