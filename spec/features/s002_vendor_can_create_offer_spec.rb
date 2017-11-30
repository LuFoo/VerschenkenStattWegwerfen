require 'rails_helper'
describe 'S002 vendor can create offers' do
    before :each do
      category = Category.create(name: 'Books')
      @user = User.create(name: 'Tester2', email: 'test2@example.de', password: 'psw', password_confirmation: 'psw')
      login_as(@user, :scope => :user)

    end
    it 'by creating an offer' do
        visit new_offer_path

        fill_in 'offers_title', with: 'Hochzeitskleid'
        select('Books', from: 'offers_category_id')
        fill_in 'offers_zipcode', with: '13854'
        fill_in 'offers_district', with: 'Pankow'
        fill_in 'offers_description', with: 'gebrauchtes Hochzeitskleid'
        
        login_as(@user, :scope => :user)
        click_button 'Create'
        expect(page).to have_content('Hochzeitskleid')
        expect(page).to have_content('Offer was successfully created.')
    end
end
