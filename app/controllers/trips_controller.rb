class TripsController < ApplicationController
  def index
    # trips = @all.find_by(user_id: current_user.id)
    @all = Trip.all
    trips = @all.find_all { |trip| trip.user_id == current_user.id }
    render json: trips
  end
end
