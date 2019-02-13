class TrailsController < ApplicationController
  def show
    @trail = Trail.find(params[:id])
    @trips = @trail.trips
    @total_trips = @trips.count
  end
end
