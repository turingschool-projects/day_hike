require 'rails_helper'
describe 'visitor visiting trips index' do
  it 'can show all the trips names' do
    trip = Trip.create(name: 'trip1')
    trip1 = Trip.create(name: 'this is new trip')

    visit trips_path

    expect(page).to have_content(trip.name)
    expect(page).to have_content(trip1.name)
  end

  it 'can take me to trip show page when clicked on trips name' do
    trip = Trip.create(name: 'trip1')
    trip1 = Trip.create(name: 'this is new trip')

    visit trips_path
    click_on trip.name

    expect(current_path).to eq(trip_path(trip))
  end

  it 'can show all the trails included in that trip and trails details when trip show' do
    trip = Trip.create(name: 'trip1', start_date: '02/03/13', end_date: '02/03/13')

    trail1 = trip.trails.create(name: 'first trail', address: 'denver', length: 5)
    trail2 = trip.trails.create(name: 'second trail', address: 'lakewood', length: 5)

    visit trip_path(trip)

    expect(page).to have_content(trail1.name)
    expect(page).to have_content(trail1.address)
    expect(page).to have_content(trail1.length)

    expect(page).to have_content(trail2.name)
    expect(page).to have_content(trail2.address)
    expect(page).to have_content(trail2.length)
  end

  it "shows total distance to travel in a trip by adding length of all the trails' length" do
    trip = Trip.create(name: 'trip1', start_date: '02/03/13', end_date: '02/03/13')

    trail1 = trip.trails.create(name: 'first trail', address: 'denver', length: 5)
    trail2 = trip.trails.create(name: 'second trail', address: 'lakewood', length: 5)

    visit trip_path(trip)

    expect(page).to have_content("Total Hiking Distance: #{trail1.length + trail2.length}")
  end
end
