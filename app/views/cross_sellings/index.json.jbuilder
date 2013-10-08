json.array!(@cross_sellings) do |cross_selling|
  json.extract! cross_selling, :nbr_advice_item
  json.url cross_selling_url(cross_selling, format: :json)
end
