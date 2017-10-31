class CreateOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :offers do |t|
      t.string :title
      t.string :category
      t.text :description
      t.string :zipcode

      t.timestamps
    end
  end
end
