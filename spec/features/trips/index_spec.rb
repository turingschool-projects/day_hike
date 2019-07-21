require 'rails_helper'

RSpec.describe 'hiking trip index page' do
  describe 'as a visitor' do
    before(:each) do
      @arapahoe = Trail.create!(name:"Arapahoe Basin",length: 9, address: "Eldora")
      @boulder_res = Trail.create!(name:"Boulder Resevoir",length: 1, address: "Boulder")
      @crater_lake = Trail.create!(name:"Crater Lake",length: 18, address: "Grand Lake")
      @devils_thumb = Trail.create!(name:"Devil's Thumb",length: 5, address: "Boudler")

      @trip_1 = Trip.create!(name: "Trip 1", start_date: 07/30/2019, end_date: 07/30/2019)
      @trip_2 = Trip.create!(name: "Trip 2", start_date: 07/30/2019, end_date: 07/30/2019)
      @trip_3 = Trip.create!(name: "Trip 3", start_date: 07/30/2019, end_date: 07/30/2019)

      @trip_1.trails << [@arapahoe, @boulder_res, @crater_lake, @devils_thumb]
      @trip_2.trails << [@arapahoe, @boulder_res, @crater_lake]
      @trip_3.trails << [@arapahoe, @boulder_res]

      visit trips_path
    end

    it 'I see all hiking trip names' do
      expect(page).to have_content(@trip_1.name)
      expect(page).to have_content(@trip_2.name)
      expect(page).to have_content(@trip_3.name)
    end

    it 'hiking trip names on index pagew are links that redirct to a show page for that trip' do
      expect(page).to have_link(@trip_1.name)
      expect(page).to have_link(@trip_2.name)
      click_link(@trip_3.name)
      expect(page).to have_current_path(trip_path(@trip_3.id))
    end
  end
end
