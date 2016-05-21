json.array!(@adminkas) do |adminka|
  json.extract! adminka, :id, :title, :body
  json.url adminka_url(adminka, format: :json)
end
