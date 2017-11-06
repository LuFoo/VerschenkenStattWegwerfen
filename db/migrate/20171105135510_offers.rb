class Offers < ActiveRecord::Migration[5.1]
  def self.up
       create_table :offers do |t|
          t.column :title, :string, :limit => 32, :null => false
          t.column :category_id, :integer
          t.column :zipcode, :string
          t.column :district, :string
          t.column :description, :text
          t.column :created_at, :timestamp
       end
    end

    def self.down
       drop_table :offers
    end
 end