require 'rails_helper'

RSpec.describe "charities/edit", type: :view do
  before(:each) do
    @charity = assign(:charity, Charity.create!(
      :name => "MyString",
      :goods => "MyString",
      :address => "MyString",
      :zipcode => "MyString",
      :district => "MyString"
    ))
  end

  it "renders the edit charity form" do
    render

    assert_select "form[action=?][method=?]", charity_path(@charity), "post" do

      assert_select "input[name=?]", "charity[name]"

      assert_select "input[name=?]", "charity[goods]"

      assert_select "input[name=?]", "charity[address]"

      assert_select "input[name=?]", "charity[zipcode]"

      assert_select "input[name=?]", "charity[district]"
    end
  end
end
