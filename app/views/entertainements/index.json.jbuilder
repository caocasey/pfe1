json.array!(@entertainements) do |entertainement|
  json.extract! entertainement, :waitingtime
  json.url entertainement_url(entertainement, format: :json)
end
