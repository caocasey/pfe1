json.array!(@clothings) do |clothing|
  json.extract! clothing, :size, :uid, :brand, :color
  json.url clothing_url(clothing, format: :json)
end
