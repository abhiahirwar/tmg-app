json.array!(@addresses) do |address|
  json.extract! address, :id, :property_name, :street1, :street2, :suburb, :postcode, :state, :country
  json.url address_url(address, format: :json)
end
