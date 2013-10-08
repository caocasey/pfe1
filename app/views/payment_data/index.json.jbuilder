json.array!(@payment_data) do |payment_datum|
  json.extract! payment_datum, :cardnumber, :cardId, :expirationdata, :securitycode
  json.url payment_datum_url(payment_datum, format: :json)
end
