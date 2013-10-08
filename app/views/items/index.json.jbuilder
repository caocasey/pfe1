json.array!(@items) do |item|
  json.extract! item, :title, :subtitle, :describe, :state, :reference
  json.url item_url(item, format: :json)
end
