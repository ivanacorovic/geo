require 'spec_helper'
feature 'Guest views all locations' do
  scenario 'each location is displayed with the correct information' do
    boston_location = Location.create(street_line_1: '12 Winter St.', city: "Boston", state: "MA", postal_code: "02111", country_code:"US", latitude: 42.35548199999999, longitude: -71.0608386)
    san_francisco_location =  Location.create(street_line_1: '36 2nd St.', city: ' San Francisco', state: "CA", postal_code: "94105", country_code: 'US', latitude: 37.788587, longitude: -122.400958)
    
    locations = LocationsOnPage.new
    expect(locations).to include(boston_location)
    expect(locations).to include(san_francisco_location)
  end
end