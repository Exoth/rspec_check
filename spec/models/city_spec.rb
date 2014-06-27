require 'rails_helper'

RSpec.describe City, :type => :model do
  before do
    City.delete_all
    Airport.delete_all
  end
  let!(:city) { City.create }
  let!(:first_airport) { Airport.create(city_id: city.id) }
  let!(:second_airport) { Airport.create(city_id: city.id) }
  specify { City.first.airports.should =~ [first_airport, second_airport] }
  specify { City.first.airports.should match_array [first_airport, second_airport] }
end
