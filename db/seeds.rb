# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
Offer.create(title: 'Disney Movies',category: 'Other',zipcode: '12543',district: 'Steglitz',description: '10 disney movies' )
Offer.create(title: 'Children Books',category: 'Books',zipcode: '13088',district: 'Pankow',description: '10 books for children from age 6')

Vendor.create( name: 'Trias' , description: 'CDs, DVDs', district: 'Steglitz')
Vendor.create( name: 'Ula' , description: 'Books', district: 'Mitte')

