class AddLowerIndexesToVendors < ActiveRecord::Migration[5.1]
  def change
    add_index :vendors, "lower(name) varchar_pattern_ops"
  end
end
