json.array!(@owners) do |owner|
  json.extract! owner, :facebookappid, :description, :facebookappkey
  json.url owner_url(owner, format: :json)
end
