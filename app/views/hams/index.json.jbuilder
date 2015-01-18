json.array!(@hams) do |ham|
  json.extract! ham, :id
  json.url ham_url(ham, format: :json)
end
