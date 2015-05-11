json.array!(@employers) do |employer|
  json.extract! employer, :id, :trading_name, :contact_name, :supervisor_name, :training_address, :phone, :fax, :email, :abn
  json.url employer_url(employer, format: :json)
end
