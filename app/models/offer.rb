class Offer < ApplicationRecord
validates :title, presence: true,
                    length: { minimum: 3 }
validates :zipcode, presence: true,
                    length: { minimum: 5 }
end
