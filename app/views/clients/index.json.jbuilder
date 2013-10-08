json.array!(@clients) do |client|
  json.extract! client, :sizeup, :sizedown, :sizehoes, :IMEI
  json.url client_url(client, format: :json)
end
