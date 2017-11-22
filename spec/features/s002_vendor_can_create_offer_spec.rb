require 'rails_helper'
describe 'S002 vendor can create offers' do
    before :each do
      user = User.create(name: 'Tester', email: 'test@example.de', password: 'psw', password_confirmation: 'psw')
      login_as(user, :scope => :user)
    end
    it 'by creating an offer' do
        visit new_offer_path

        fill_in 'offers_title', with: 'Hochzeitskleid'
        fill_in 'offers_category_id', with: 1
        fill_in 'offers_zipcode', with: '13854'
        fill_in 'offers_district', with: 'Pankow'
        fill_in 'offers_description', with: 'gebrauchtes Hochzeitskleid'

        click_button 'Create Offer'

        expect(page).to have_content('Offer was successfully created.')
        end
end