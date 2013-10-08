json.array!(@vistits) do |vistit|
  json.extract! vistit, :timeinstore, :date
  json.url vistit_url(vistit, format: :json)
end
