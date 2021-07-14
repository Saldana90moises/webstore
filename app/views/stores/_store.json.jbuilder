json.extract! store, :id, :name, :street, :number, :zipcode, :city, :country, :created_at, :updated_at
json.url store_url(store, format: :json)
