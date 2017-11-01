class AddDistrictToOffer < ActiveRecord::Migration[5.1]
  def change
    add_column :offers, :district, :string
  end
end
