require 'rails_helper'

RSpec.describe "charities/index", type: :view do
  before(:each) do
    assign(:charities, [
      Charity.create!(
        :name => "Name",
        :goods => "Goods",
        :address => "Address",
        :zipcode => "Zipcode",
        :district => "District"
      ),
      Charity.create!(
        :name => "Name",
        :goods => "Goods",
        :address => "Address",
        :zipcode => "Zipcode",
        :district => "District"
      )
    ])
  end

  it "renders a list of charities" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Goods".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Zipcode".to_s, :count => 2
    assert_select "tr>td", :text => "District".to_s, :count => 2
  end
end
