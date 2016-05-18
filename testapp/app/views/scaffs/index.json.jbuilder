json.array!(@scaffs) do |scaff|
  json.extract! scaff, :id, :article
  json.url scaff_url(scaff, format: :json)
end
