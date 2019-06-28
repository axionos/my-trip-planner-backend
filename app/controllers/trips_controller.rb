class TripsController < ApplicationController
  def index
    # trips = @all.find_by(user_id: current_user.id)
    @all = Trip.all
    trips = @all.find_all { |trip| trip.user_id == current_user.id }
    render json: trips
  end

  def create
    trip = Trip.create(trips_params)
    render json: trip
  end

  def update
    # byebug
    theTrip = Trip.find(params[:id])
    updatedTrip = theTrip.update(trips_params)
    render json: updatedTrip
  end

  def destroy
    theTrip = Trip.find(params[:id])
    theTrip.destroy
  end


  private

  def trips_params
    params.require(:trip).permit(:title, :startDate, :endDate, :destination, :user_id)
  end
end
