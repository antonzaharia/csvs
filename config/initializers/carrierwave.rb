require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',       # required

    aws_access_key_id: ENV.fetch('AWS_ACCESS_KEY_ID', nil), # required

    aws_secret_access_key: ENV.fetch('AWS_SECRET_ACCESS_KEY', nil), # required

    region: ENV.fetch('AWS_REGION', nil) # optional, defaults to 'us-east-1'

  }
  config.fog_directory  = ENV.fetch('S3_BUCKET_NAME', nil) # required

  config.fog_public = true

  config.fog_attributes = { 'Cache-Control'=>'max-age=315576000' }  # optional, defaults to {}

end