require 'rails_helper'

RSpec.describe "charities/new", type: :view do
  before(:each) do
    assign(:charity, Charity.new(
      :name => "MyString",
      :goods => "MyString",
      :address => "MyString",
      :zipcode => "MyString",
      :district => "MyString"
    ))
  end

  it "renders new charity form" do
    render

    assert_select "form[action=?][method=?]", charities_path, "post" do

      assert_select "input[name=?]", "charity[name]"

      assert_select "input[name=?]", "charity[goods]"

      assert_select "input[name=?]", "charity[address]"

      assert_select "input[name=?]", "charity[zipcode]"

      assert_select "input[name=?]", "charity[district]"
    end
  end
end
