class TripsController < ApplicationController

  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])
    @trails = @trip.trails
    @total_hiking_distance = @trip.total_hiking_distance
    @average_hiking_distance = @trip.average_hiking_distance
    @longest_hiking_distance = @trip.longest_hiking_distance
    @shortest_hiking_distance = @trip.shortest_hiking_distance
  end


end
