class CreateCharities < ActiveRecord::Migration[5.1]
  def change
    create_table :charities do |t|
      t.string :name
      t.string :goods
      t.string :address
      t.string :zipcode
      t.string :district

      t.timestamps
    end
  end
end
