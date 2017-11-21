require 'rails_helper'
describe 'S002 vendor can create offers' do
  context '(when logged in)' do
    before :each do
      user = User.create(email: 'test@example.de', password: 'psw', password_confirmation: 'psw')
      login_as(user, :scope => :user)
    end
    it 'by creating an offer' do
        visit offers_path

        fill_in 'offer_title', with: 'Hochzeitskleid'
        fill_in 'offer_category', with: 'Kleidung'
        fill_in 'offer_zipcode', with: '13854'
        fill_in 'offer_district', with: 'Pankow'
        fill_in 'offer_description', with: 'gebrauchtes Hochzeitskleid'

        click_button 'Create Offer'

        expect(page).to have_content('Offer was successfully created.')
        end
    end

      context '(when logged out)' do
        it 'blocks the new event' do
          visit offer_path
          expect(page).to have_content I18n.t('devise.failure.unauthenticated')
        end
       end
end