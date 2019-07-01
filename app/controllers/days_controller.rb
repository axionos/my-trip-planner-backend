class DaysController < ApplicationController
  def index
    @all = Day.all
    trip_id = params[:id]
    # days = @all.select{|day| day.trip_id == trip_id.to_i}
    days = Trip.find(trip_id).days
    render json: days
  end
end
