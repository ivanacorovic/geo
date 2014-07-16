namespace :db do
  task populate: :environment do
    Location.delete_all
    Location.create({name: "Statue of Liberty", street_line_1: "Castle Clinton National Monument", street_line_2: "Battery Park", city: "New York", state: "New York", postal_code: "12754", latitude: 41.798476, longitude: -74.7361})
    Location.create({name: "Hard Rock Cafe", street_line_1: "1501 Broadway", city: "New York", state: "New York", postal_code: "10036", latitude: 40.759511, longitude: -73.99019})
    Location.create({name: "M&M", street_line_1: "33 Sycamore Road", city: "Milford", state: "New Hampshire", postal_code: "03055", latitude: 42.831686, longitude: -71.66743})
    Location.create({name: "MHS", street_line_1: "100 West Street", city: "Milford", state: "New Hampshire", postal_code: "03055", latitude: 42.831686, longitude: -71.66743})
    Location.create({name: "NCRH", street_line_1: "1000 Ben Graves Dr", city: "Huntsville", state: "Alabama", postal_code: "35816", latitude: 34.73969, longitude: -86.62464})
  end
end
