json.array!(@parse_data) do |parse_datum|
  json.extract! parse_datum, :username, :password, :authdata, :email, :emailverified, :ACL, :objectId
  json.url parse_datum_url(parse_datum, format: :json)
end
