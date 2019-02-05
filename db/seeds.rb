# Users
User.destroy_all
## 99.times do |n|
##   name  = Faker::Name.name
##   User.create!(name: name,
##               admin: false)
## end
u1 = User.create!(name: "user__1", admin: false);
u2 = User.create!(name: "user__2", admin: false);
u3 = User.create!(name: "user__3", admin: false);
u4 = User.create!(name: "user__4", admin: false);
u5 = User.create!(name: "user__5", admin: false);
u6 = User.create!(name: "user__6", admin: false);


# Airplanes
Airplane.destroy_all
a1 = Airplane.create!(plane_model: "737", rows: 30, columns: 6);
a2 = Airplane.create!(plane_model: "737", rows: 30, columns: 6);
a3 = Airplane.create!(plane_model: "747", rows: 45, columns: 10);
a4 = Airplane.create!(plane_model: "777", rows: 42, columns: 8);


# Flights
Flight.destroy_all
f1 = Flight.create!(number: "0523", origin: "JFK", destination: "SFO", date: '20181102');
f2 = Flight.create!(number: "0527", origin: "SFO", destination: "JFK", date: '20181103');
f3 = Flight.create!(number: "0527", origin: "SFO", destination: "SYD", date: '20181219');




# Reservation

# 99.times do |n|
#   user_id = n
#   flight_id = n/3
#   seat
#   name  = Faker::Name.name
#   User.create!(name: name,
#               admin: false)
# end
#
Reservation.destroy_all
r1 = Reservation.create!(seat: "23B", reserved: true);
r2 = Reservation.create!(seat: "23A", reserved: true);
r3 = Reservation.create!(seat: "12B", reserved: true);
r4 = Reservation.create!(seat: "23F", reserved: true);
r5 = Reservation.create!(seat: "12B", reserved: true);
r6 = Reservation.create!(seat: "27E", reserved: true);


# Associations #################################################################
a1.flights << f1
a2.flights << f2
a3.flights << f3

u1.reservations << r1
u2.reservations << r2
u3.reservations << r3
u4.reservations << r4
u5.reservations << r5
u6.reservations << r6

f1.reservations << r1
f2.reservations << r2
f3.reservations << r3
f1.reservations << r4
f2.reservations << r5
f3.reservations << r6
