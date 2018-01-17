json.array! @charities, partial: 'charities/charity', as: :charity

json.array!(@charities) do |charity|
  json.extract! charity, :name, :goods, :address, :zipcode, :district
  json.url charity_url(charity, format: :json)
end
