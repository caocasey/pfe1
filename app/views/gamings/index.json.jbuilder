json.array!(@gamings) do |gaming|
  json.extract! gaming, :score, :urlgame
  json.url gaming_url(gaming, format: :json)
end
