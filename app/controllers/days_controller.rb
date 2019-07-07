class DaysController < ApplicationController
  def index
    # byebug
    # Days
    trip_id = params[:id]
    days = session_user.trips.find(trip_id).days

    # Items
    items = days.map{ |day| day.items }
    # day_id = params[:id]
    # items = Day.find(day_id).items
    # byebug
    flattened = items.flatten
    render json: { days: days, items: flattened}
  end
end
