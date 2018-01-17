json.extract! charity, :id, :name, :goods, :address, :zipcode, :district, :created_at, :updated_at
json.url charity_url(charity, format: :json)
