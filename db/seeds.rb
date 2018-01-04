# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
include Faker

User.destroy_all
User.create(email: 'test@example.de', name: 'Tester', password: 'psw123*',
password_confirmation: 'psw123*')

Category.create(name: 'Books');
Category.create(name: 'Clothes');
Category.create(name: 'CDs');
Category.create(name: 'DVDs');

Offer.destroy_all
Offer.create(title: 'Children Books', category_id: 1, zipcode: '13643', district: 'Mitte', description: '15 books for children from age 6')
Offer.create(title: 'Movies', category_id: 4, zipcode: '13643', district: 'Mitte', description: '15 books for children from age 6')
Offer.create(title: 'CDs 80er', category_id: 3, zipcode: '13643', district: 'Mitte', description: '15 books for children from age 6')

Vendor.destroy_all
50.times do |i|
    Vendor.create!(
        name: "#{Faker::Name.first_name}#{i}",
        description: 'Books',
        district: 'Pankow')
    Vendor.create!(
        name: "#{Faker::Name.last_name}#{i}",
        description: 'Movies',
        district: 'Mitte')
        print '.' if i % 10 == 0
end
puts