class DaysController < ApplicationController
  def index
    # Days
    trip_id = params[:id]
    days = session_user.trips.find(trip_id).days

    # Items
    items = days.map{ |day| day.items }
    flattened = items.flatten

    first_day_id = days[0].id
    first_day_items = flattened.find_all{|item| item.day_id == first_day_id}
    render json: { days: days, items: first_day_items}
  end
end
