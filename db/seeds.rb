# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Person.destroy_all
(1..100).each do
  Person.create!(
    name: FFaker::NameKH.unique.name,
    email: "#{FFaker::Name.first_name.downcase}@email.com",
    phone: FFaker::PhoneNumber.phone_number,
    address: FFaker::Address.street_address
  )
end
