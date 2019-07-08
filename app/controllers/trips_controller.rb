class TripsController < ApplicationController
  def index
    @all = Trip.all
    trips = session_user.trips
    # trips = @all.find_all { |trip| trip.user_id == session_user.id }
    render json: trips
  end

  def create
    trip = Trip.create(trips_params)

    # calculate number of days in between two dates
    startDate = Date.parse(params[:trip][:startDate])
    endDate = Date.parse(params[:trip][:endDate])
    # byebug
    days = endDate.mjd - startDate.mjd + 1 # 10

    # find the trip_id for the new trip
    title = params[:trip][:title]
    theTrip = Trip.all.find{ |trip| trip.title == title }

    # create number of DAYs for that trip
    x = 1
    while x <= days
      # byebug
      Day.create(trip_id: theTrip.id, day: x)
      x += 1
    end

    theDays = Day.all.find_all{ |day| day.trip_id == theTrip.id }
    render json: { trip: trip, days: trip.days }
  end

  def update
    theTrip = Trip.find(params[:id])
    theTripDays = theTrip.days # array of days
    updatedTrip = theTrip.update(trips_params)

    startDate = Date.parse(params[:trip][:startDate])
    endDate = Date.parse(params[:trip][:endDate])
    days = endDate.mjd - startDate.mjd + 1

    added_days = days - theTripDays.length
    removed_days = theTripDays.length - days

    if theTripDays.length < days
      x = 1
      while x <= added_days
        Day.create(trip_id: theTrip.id, day: theTripDays.length + x)
        x += 1
      end
    elsif theTripDays.length > days
      arr = theTripDays.to_a.pop(removed_days)
      day_ids = arr.each{ |day| day.destroy }
    end

    render json: updatedTrip
  end

  def destroy
    theTrip = Trip.find(params[:id])
    theDays = Day.all.find_all{ |day| day.trip_id == theTrip.id }
    theDays.each{ |day| day.delete }
    theTrip.destroy
  end



  private

  def trips_params
    params.require(:trip).permit(:title, :startDate, :endDate, :destination, :user_id)
  end
end
