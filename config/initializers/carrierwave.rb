CarrierWave.configure do |config|
	# config.fog_provider = 'fog-google'
  config.fog_credentials = {
    provider:                         'Google',
    google_storage_access_key_id:     'GOOGXBZY66QVLGEJFYN3',
    google_storage_secret_access_key: 'qhjbzMku6MWru/zAGSHVzwQ+zrzI87hWGbFTx0cG'
  }
  config.fog_directory = 'tmg-app-6'
end