# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
accommodation_types = [
  "House",
  "Apartment",
  "Villa",
  "Guest House",
  "Hotel",
  "Condo",
  "Cottage",
  "Bungalow",
  "Townhouse",
  "Farmhouse",
  "Mansion",
  "Chalet",
  "Treehouse",
  "Boat",
  "Tent",
  "Yurt",
  "Cabin",
  "Castle",
  "Igloo",
  "Ranch",
  "Lodge",
  "Resort",
  "Dormitory",
  "Campsite",
  "Hostel",
  "Boutique Hotel",
  "Riad",
  "Bed and Breakfast",
  "Motel",
  "Pension",
  "Ryokan",
  "Palace",
  "Houseboat",
  "Cave",
  "Camper/RV",
  "Loft",
  "Studio",
  "Penthouse",
  "Hut",
  "Train",
  "Cruise Ship",
  "Teepee",
  "Tipi",
  "Lighthouse",
  "Windmill",
  "Farm stay",
  "Dome house",
  "Earth house",
  "Church",
  "School",
  "Warehouse",
  "Aparthotel",
  "Flat",
  "Suite",
  "Shelter",
  "Manor",
]
# Seed data for AccommodationType
accommodation_types.each do |type|
  AccommodationType.create(type_name: type)
end

amenities = [
  "WiFi",
  "Kitchen",
  "Air conditioning",
  "Washing machine",
  "Free parking",
  "Iron",
  "TV",
  "Heating",
  "Essentials (towels, bed sheets, soap, toilet paper)",
  "Shampoo",
  "Hair dryer",
  "Laptop-friendly workspace",
  "Hangers",
  "Private entrance",
  "Breakfast",
  "Indoor fireplace",
  "Pool",
  "Hot tub",
  "Gym",
  "BBQ grill",
  "Patio or balcony",
  "Beach access",
  "Waterfront",
  "Ski-in/Ski-out",
  "Golf course",
  "Garden or backyard",
  "Bicycle available",
  "Pets allowed",
  "Smoking allowed",
  "Events allowed",
  "Long term stays allowed",
  "Self check-in",
]

# Seed data for Amenities
amenities.each do |amenity|
  Amenity.create(name: amenity)
end


5.times do
  User.create(
    email: Faker::Internet.email,
    password: 'password', # Set a default password
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    profile_picture: Faker::Avatar.image,
    phone_number: Faker::PhoneNumber.phone_number,
    biography: Faker::Lorem.paragraph,
    role: ['Host', 'Guest'].sample # Assign a random role
  )
end
