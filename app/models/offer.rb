class Offer < ApplicationRecord
	belongs_to :category
	validates :title, presence: true, length: { minimum: 3 }
	validates :zipcode, presence: true, length: { minimum: 5 }

	    def self.search(term)
            if term
                where('category LIKE ?', "%#{term}%")
                where('title LIKE ?', "%#{term}%")
            else
                all
            end
        end
end