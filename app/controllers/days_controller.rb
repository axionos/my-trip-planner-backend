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
    flattened = items.flatten

    first_day_id = days[0].id
    first_day_items = flattened.find_all{|item| item.day_id == first_day_id}
    # byebug
    render json: { days: days, items: first_day_items}
  end
end
