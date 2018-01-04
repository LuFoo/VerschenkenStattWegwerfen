class CreateVendors < ActiveRecord::Migration[5.1]
  def change
    create_table :vendors do |t|
      t.string :name , null: false
      t.text :description
      t.string :district , null: false

      t.timestamps
    end
    add_index :vendors, :name, unique: true
    add_index :vendors, :district
  end
end
