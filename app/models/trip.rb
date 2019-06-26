class Trip < ApplicationRecord
  has_many :days
  has_many :items, through: :days
  belongs_to :user

end
