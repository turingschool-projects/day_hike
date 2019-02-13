require 'rails_helper'
describe 'visitor visiting trail show page' do
  it 'tril show page shows name address and total length of every hiking trip that includes this trail' do
    trip = Trip.create(name: 'trip1')

    trail = trip.trails.create(name: 'first trail', address: 'denver', length: 5)
    trail2 = trip.trails.create(name: 'second trail', address: 'denver', length: 10)


    visit trail_path(trail)

    expect(page).to have_content(trail.name)
    expect(page).to have_content(trail.address)

    expect(page).to have_content("Total hiking distance for #{trip.name}: #{trip.total_hiking_distance}")
  end


  it 'trail show page shows total number of trips where this trail is included ' do
    trail = Trail.create(name: 'first trail', address: 'denver', length: 5)

    trip1 = trail.trips.create(name: 'trip1', start_date: '02/03/13', end_date: '02/03/13')
    trip2 = trail.trips.create(name: 'trip2', start_date: '02/03/13', end_date: '02/03/13')


    visit trail_path(trail)

    expect(page).to have_content("Total Number of Trips where this trail is included: #{trail.trips.count}")
  end
end
