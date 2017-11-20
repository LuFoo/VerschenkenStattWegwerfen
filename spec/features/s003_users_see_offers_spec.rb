require 'rails_helper'

RSpec.feature "Offer management", :type => :feature do
scenario 's003: user can create offer' do

click_button "All Offers"


    expect(page).to have_text("Children")

    end
end
