require 'rails_helper'
describe 'S003 See all vendors' do
    before :each do
      user = User.create!(name: 'Tester', email: 'test@example.de', password: 'psw123', password_confirmation: 'psw123')
      login_as(user, :scope => :user)
    end
    it 'can see all vendors' do
        visit vendors_path
        end
end