json.array!(@visits) do |visit|
  json.extract! visit, :timeinstore, :date
  json.url visit_url(visit, format: :json)
end
