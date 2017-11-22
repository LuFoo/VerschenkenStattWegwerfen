require 'rails_helper'
describe 'S001 See all offers' do
    before :each do
      user = User.create(name: 'Tester', email: 'test@example.de', password: 'psw', password_confirmation: 'psw')
      login_as(user, :scope => :user)
    end
    it 'can see all offers' do
        visit offers_path
        end
end