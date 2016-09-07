# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Seed entries with no associations - skiers, patrollers, dispatchers, destinations
Destination.create(name: "Whistler/Blackcomb", lat: 50.0, long: -123.0, radius: 5000) #radius in meters
Destination.create(name: "Big White", lat: 49.735, long: -118.944, radius: 3000)
Destination.create(name: "Silver Star", lat: 50.375, long: -119.048, radius: 2500)
Destination.create(name: "Lighthouse Ski Resort", lat: 49.28200, long: -123.10827, radius: 20)
Dispatcher.create(firstname: "Rodney", lastname: "Farva", username: "ramrod", on_shift: true, destination_id: 4)
Dispatcher.create(firstname: "Larry", lastname: "Johnson", username: "larjon", on_shift: false, destination_id: 4)
Patroller.create(name: "Arcot Ramathorn", username: "thorny", on_shift: true, destination_id: 4)
Patroller.create(name: "MacIntyre Womack", username: "mac", on_shift: true, destination_id: 4)
Patroller.create(name: "Jeff Foster", username: "foster", on_shift: false, destination_id: 4)
Patroller.create(name: "Robert Roto", username: "rabbit", on_shift: true, destination_id: 1)
Patroller.create(name: "John O'Hagen", username: "captain", on_shift: false, destination_id: 1)
Group.create(name: "Lighthouse Skiers", admin_id: 3)
Group.create(name: "Norway Ski Team", admin_id: 4)
Skier.create(firstname: "Jacob", lastname: "Robinson", email: "jacob@example.com", ec1: "Larry", ec1phone: "5555555", username: "jacob", phone: "2505550155", profile_picture: "none") #not checked in
Skier.create(firstname: "Simon", lastname: "Edmondson", email: "simon@example.com", ec1: "Larry", ec1phone: "5555555", username: "simon", phone: "2505550156", profile_picture: "none", current_checkin_id: 5) 
Skier.create(firstname: "Harish", lastname: "Raisinghani", email: "harish@example.com", ec1: "Larry", ec1phone: "5555555", username: "harish", phone: "2505550157", profile_picture: "none", current_checkin_id: 6) #group admin
Skier.create(firstname: "Silje", lastname: "Norendal", email: "silje@example.com", ec1: "Larry", ec1phone: "5555555", username: "silje", phone: "2505550158", profile_picture: "none", current_checkin_id: 7) #checked into a different group
Skier.create(firstname: "Bode", lastname: "Miller", email: "bode@example.com", ec1: "Larry", ec1phone: "5555555", username: "bode", phone: "2505550159", profile_picture: "none", current_checkin_id: 8) #no group, checked in
Skier.create(firstname: "Nancy", lastname: "Greene", email: "nancy@example.com", ec1: "Larry", ec1phone: "5555555", username: "nancy", phone: "2505550160", profile_picture: "none") #no group, not checked in
Membership.create(skier_id: 1, group_id: 1)
Membership.create(skier_id: 2, group_id: 1)
Membership.create(skier_id: 3, group_id: 1)
Membership.create(skier_id: 4, group_id: 2)
Checkin.create(skier_id: 1, destination_id: 4, checkout: Time.now)#a closed checkin for each user
Checkin.create(skier_id: 2, destination_id: 4, checkout: Time.now)
Checkin.create(skier_id: 3, destination_id: 4, checkout: Time.now)
Checkin.create(skier_id: 4, destination_id: 4, checkout: Time.now)
Checkin.create(skier_id: 5, destination_id: 4, checkout: Time.now)
Checkin.create(skier_id: 6, destination_id: 4, checkout: Time.now)
Checkin.create(skier_id: 1, destination_id: 1, checkout: Time.now)#and some in other destinations
Checkin.create(skier_id: 2, destination_id: 1, checkout: Time.now)
Checkin.create(skier_id: 4, destination_id: 1, checkout: Time.now)
Checkin.create(skier_id: 2, destination_id: 4) #active checkins
Checkin.create(skier_id: 3, destination_id: 4)
Checkin.create(skier_id: 4, destination_id: 4)
Checkin.create(skier_id: 5, destination_id: 4)
Ping.create(checkin_id: 10, lat: 10, long: 10) #pings to support the alerts
Ping.create(checkin_id: 11, lat: 10, long: 10)
Ping.create(checkin_id: 12, lat: 10, long: 10)
Ping.create(checkin_id: 13, lat: 10, long: 10)
Ping.create(checkin_id: 10, lat: 10, long: 10)
Ping.create(checkin_id: 11, lat: 10, long: 10)
Ping.create(checkin_id: 2, lat: 10, long: 10)
Ping.create(checkin_id: 1, lat: 10, long: 10)
Alert.create(ping_id: 1, user_generated: true, state: "active", dispatcher_id: 1) #user gen, not assigned
Alert.create(ping_id: 2, user_generated: false, state: "active", dispatcher_id: 1) #auto, not assigned
Alert.create(ping_id: 3, user_generated: true, state: "active", dispatcher_id: 1, patroller_id: 1) #user gen, assigned
Alert.create(ping_id: 4, user_generated: false, state: "active", dispatcher_id: 1, patroller_id: 2) #auto, assigned
Alert.create(ping_id: 5, user_generated: true, state: "active", dispatcher_id: 1, false_alarm: true) #false alarm, user gen
Alert.create(ping_id: 6, user_generated: false, state: "active", dispatcher_id: 1, false_alarm: true) #false alarm, auto
Alert.create(ping_id: 7, user_generated: false, state: "inactive", dispatcher_id: 1, patroller_id: 1) #auto, assigned, investigated
Alert.create(ping_id: 8, user_generated: true, state: "inactive", dispatcher_id: 1, patroller_id: 1) #user gen, assigned
