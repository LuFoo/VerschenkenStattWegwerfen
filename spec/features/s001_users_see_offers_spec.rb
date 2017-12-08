require 'rails_helper'
describe 'S001 See all offers' do
    before :each do
      user = User.create!(name: 'Tester', email: 'test@example.de', password: 'psw123', password_confirmation: 'psw123')
      login_as(user, :scope => :user)
    end
    it 'can see all offers' do
        visit offers_path
        end
end