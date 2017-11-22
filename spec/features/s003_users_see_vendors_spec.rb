require 'rails_helper'
describe 'S003 See all vendors' do
  context '(when logged in)' do
    before :each do
      user = User.create(name: 'Tester', email: 'test@example.de', password: 'psw', password_confirmation: 'psw')
      login_as(user, :scope => :user)
    end
    it 'can see all vendors' do
        visit vendors_path
        end
    end
end