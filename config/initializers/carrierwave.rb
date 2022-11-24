require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws' 
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV.fetch('AWS_ACCESS_KEY_ID', nil),
    aws_secret_access_key: ENV.fetch('AWS_SECRET_ACCESS_KEY', nil),
    region: ENV.fetch('AWS_REGION', nil)
  }
  config.fog_directory = ENV.fetch('S3_BUCKET_NAME', nil)
  config.storage = :fog
end