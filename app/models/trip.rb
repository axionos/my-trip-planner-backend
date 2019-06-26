class Trip < ApplicationRecord
  # has_many :patients, through: :appointments
  belongs_to :user
  has_many :days
  has_many :items, through: :days
end
