require 'rails_helper'

RSpec.describe "charities/show", type: :view do
  before(:each) do
    @charity = assign(:charity, Charity.create!(
      :name => "Name",
      :goods => "Goods",
      :address => "Address",
      :zipcode => "Zipcode",
      :district => "District"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Goods/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Zipcode/)
    expect(rendered).to match(/District/)
  end
end
