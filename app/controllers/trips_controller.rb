class TripsController < ApplicationController

  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])
    @trails = @trip.trails
    @total_hiking_distance = @trip.total_hiking_distance
  end

end
