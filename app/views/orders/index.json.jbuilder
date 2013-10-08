json.array!(@orders) do |order|
  json.extract! order, :paymentmode, :validata
  json.url order_url(order, format: :json)
end
