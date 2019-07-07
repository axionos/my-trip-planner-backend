class ItemSerializer < ActiveModel::Serializer
  attributes :id, :day_id, :place, :latitude, :longitude, :open_now, :rating, :photo, :address

  belongs_to :day
end
