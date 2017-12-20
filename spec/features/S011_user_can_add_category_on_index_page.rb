require 'rails_helper'

describe 'S011_user_can_add_category_on_index_page.rb' do 
	it 'by creating a category' do 
		visit categories_path
		fill_in 'category_name', with: 'New  Category'
		click_button 'Create'
		expect(page).to have_content('New Category')
	end 
end
