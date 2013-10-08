json.array!(@stores) do |store|
  json.extract! store, :name, :address, :city, :country, :numberfittingroom, :type
  json.url store_url(store, format: :json)
end
