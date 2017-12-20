require 'rails_helper'

describe 'S012_user_can_delete_a_category.rb' do
    before :each do
      user = User.create!(name: 'Tester', email: 'test@example.de', password: 'psw123', password_confirmation: 'psw123')
      login_as(user, :scope => :user)
      @category = Category.create(name: 'Books')
   end
	it 'by deleting a category' do
	    visit categories_path
		click_on 'Destroy'
	end
end
