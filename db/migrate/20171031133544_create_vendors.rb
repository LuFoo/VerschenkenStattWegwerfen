class CreateVendors < ActiveRecord::Migration[5.1]
  def change
    create_table :vendors do |t|
      t.string :name
      t.text :description
      t.string :district

      t.timestamps
    end
  end
end
