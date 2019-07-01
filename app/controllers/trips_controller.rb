class TripsController < ApplicationController
  def index
    # trips = @all.find_by(user_id: session_user.id)
    @all = Trip.all
    trips = @all.find_all { |trip| trip.user_id == session_user.id }
    render json: trips
  end

  def create
    trip = Trip.create(trips_params)

    # calculate number of days in between two dates
    startDate = Date.parse(params[:trip][:startDate])
    endDate = Date.parse(params[:trip][:endDate])
    days = endDate.mjd - startDate.mjd + 1

    # find the trip_id for the new trip
    title = params[:trip][:title]
    theTrip = Trip.all.find{ |trip| trip.title == title }

    # create number of DAYs for that trip
    x = 1
    while x <= days
      Day.create(trip_id: theTrip.id, day: x)
      x += 1
    end

    theDays = Day.all.find_all{ |day| day.trip_id == theTrip.id }
    render json: { trip: trip, days: trip.days }
  end

  def update
    theTrip = Trip.find(params[:id])
    updatedTrip = theTrip.update(trips_params)
    render json: updatedTrip
  end

  def destroy
    theTrip = Trip.find(params[:id])
    theDays = Day.all.find_all{|day| day.trip_id == theTrip.id}
    theDays.each{|day| day.delete}
    theTrip.destroy
  end



  private

  def trips_params
    params.require(:trip).permit(:title, :startDate, :endDate, :destination, :user_id)
  end
end
