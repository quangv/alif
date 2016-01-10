json.array!(@alphabets) do |alphabet|
  json.extract! alphabet, :id, :name
  json.url alphabet_url(alphabet, format: :json)
end
