class Categories < ActiveRecord::Migration[5.1]
  def self.up

      create_table :categories do |t|
         t.column :name, :string
      end

      Category.create :name => "Books"
      Category.create :name => "Movies"
      Category.create :name => "Clothes"
      Category.create :name => "Other"
   end

   def self.down
      drop_table :categories
   end
end