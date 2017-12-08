require 'rails_helper'
describe 'S005 users can search for a keyword in the search bar' do
    before :each do
      user = User.create!(name: 'Tester', email: 'test@example.de', password: 'psw123', password_confirmation: 'psw123')
      login_as(user, :scope => :user)
      category = Category.create(name: 'Books')
      @offer1 = Offer.create(title: 'Children Books', category_id: 1, zipcode: '13643', district: 'Mitte', description: '15 books for children from age 6')
      @offer2 = Offer.create(title: 'Winter clothes', category_id: 2, zipcode: '12043', district: 'Pankow', description: 'winter clothes for men')
    end

    it 'can search for a keyword' do

         visit welcome_index_path

         fill_in :term, with: "Books"
         click_on 'Search'

         expect(page).to have_text(@offer1.title)

        end

    it 'can view the offers details' do
         visit offers_path

         click_on 'Children Books'
         expect(page).to have_content('15 books for children from age 6')

        end

    it 'can go back from the details view to the offers overview' do

         visit offer_path(@offer1.id)
         click_on 'Back'
         expect(page).to have_content('Add new Offer')

        end
end