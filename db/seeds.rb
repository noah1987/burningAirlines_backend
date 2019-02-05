# Users
99.times do |n|
  name  = Faker::Name.name
  User.create!(name: name,
              admin: false)
end

# Airplanes
Airplane.create!(plane_model: "737", rows: 30, columns: 6)
Airplane.create!(plane_model: "737", rows: 30, columns: 6);
Airplane.create!(plane_model: "747", rows: 45, columns: 10);
Airplane.create!(plane_model: "777", rows: 42, columns: 8);
Airplane.create!(plane_model: "777", rows: 42, columns: 8);


# Flights
Flight.create!(number: "0523", origin: "JFK", destination: "SFO", date: '20181102', airplane_id: 1);
Flight.create!(number: "0527", origin: "SFO", destination: "JFK", date: '20181103', airplane_id: 2);
Flight.create!(number: "0527", origin: "SFO", destination: "SYD", date: '20181219', airplane_id: 4);




# Reservation
