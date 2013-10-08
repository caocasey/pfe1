json.array!(@social_data) do |social_datum|
  json.extract! social_datum, :facebookToken, :facebookSecret
  json.url social_datum_url(social_datum, format: :json)
end
