class Offer < ApplicationRecord
validates :title, presence: true,
                    length: { minimum: 3 }
validates :zipcode, length: { minimum: 5 }
end
