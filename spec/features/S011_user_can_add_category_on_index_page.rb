require 'rails_helper'

describe 'S011_user_can_add_category_on_index_page.rb' do
    before :each do
      user = User.create!(name: 'Tester', email: 'test@example.de', password: 'psw123', password_confirmation: 'psw123')
      login_as(user, :scope => :user)
    end
	it 'by creating a category' do 
		visit categories_path
		fill_in 'category_name', with: 'New  Category'
		click_button 'Create'
		expect(page).to have_content('New Category')
	end 
end
