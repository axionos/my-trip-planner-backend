class ItemSerializer < ActiveModel::Serializer
  attributes :id, :day_id, :place, :latitude, :longitude, :memo

  belongs_to :days
end
