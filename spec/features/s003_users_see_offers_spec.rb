require 'rails_helper'
describe 'S003 See all offers' do
  context '(when logged in)' do
    before :each do
      user = User.create(email: 'test@example.de', password: 'psw', password_confirmation: 'psw')
      login_as(user, :scope => :user)
    end
    it 'can see all offers' do
        visit offers_path
        end
    end
end