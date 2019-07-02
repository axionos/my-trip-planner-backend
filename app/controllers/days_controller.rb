class DaysController < ApplicationController
  def index
    # byebug
    # Days
    @all = Day.all
    trip_id = params[:id]
    # days = @all.select{|day| day.trip_id == trip_id.to_i}
    days = Trip.find(trip_id).days
    # byebug

    # Items
    items = days.map{ |day| day.items }
    # day_id = params[:id]
    # items = Day.find(day_id).items
    # byebug
    render json: { days: days, items: items}
  end
end
