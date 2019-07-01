class TripSerializer < ActiveModel::Serializer
  attributes :id, :title, :startDate, :endDate, :destination, :user_id
  has_many :days
end
