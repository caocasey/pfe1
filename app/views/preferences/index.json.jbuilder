json.array!(@preferences) do |preference|
  json.extract! preference, :color, :brand, :theme
  json.url preference_url(preference, format: :json)
end
