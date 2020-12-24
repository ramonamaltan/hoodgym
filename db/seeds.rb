puts 'Delete existing entries'
User.destroy_all
Rental.destroy_all
EquipmentOffer.destroy_all
Station.destroy_all

puts 'Start seeding users'
ramona = User.create(password: '123456', email: 'ramona@gmail.com', location: 'Koloniestr. 21, 13359 Berlin', first_name: 'ramona', time_account: 50)
andi = User.create(password: '123456', email: 'andi@gmail.com', location: 'Luxemburger Str. 10, 13353 Berlin', first_name: 'andreas', time_account: 100)

puts 'Start seeding stations'
freeletics_station = Station.create(name: 'Freeletics Training Ground', location: 'Monbijoustraße 3B, 10117 Berlin')
beuth_station = Station.create(name: 'Beuth Hochschule', location: 'Luxemburger Str. 10, 13353 Berlin')

puts 'Start seeding equipment_offers'
dumbbell15_freeletics1 = EquipmentOffer.create(name: '15kg Dumbbell', station_id: freeletics_station.id, item_id: 1, availability: false, presence: false, locked: false)
dumbbell15_freeletics2 = EquipmentOffer.create(name: '5kg Dumbbell', station_id: freeletics_station.id, item_id: 3, availability: false, presence: false, locked: false)
dumbbell15_beuth = EquipmentOffer.create(name: '15kg Dumbbell', station_id: beuth_station.id, item_id: 2)
dumbbell5_beuth = EquipmentOffer.create(name: '5kg Dumbbell', station_id: beuth_station.id, item_id: 4)

puts 'Start seeding rentals'
rental1 = Rental.create(begin_at: '2020-12-23 09:10:03', user_id: ramona.id, equipment_offer_id: dumbbell15_freeletics2.id)
rental2 = Rental.create(begin_at: '2020-12-23 09:20:03', user_id: ramona.id, equipment_offer_id: dumbbell15_freeletics1.id)


puts "Finished Seeding: #{User.count} users, #{Rental.count} rentals, #{EquipmentOffer.count} equipment offers and #{Station.count} stations"