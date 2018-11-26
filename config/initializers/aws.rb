CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              '',                        # required
    aws_access_key_id:     '',                        # required
    aws_secret_access_key: '',                        # required
    region:                '',                  # optional, defaults to 'us-east-1'
    endpoint:              '' # optional, defaults to nil
  }
  config.fog_directory  = ''                                                    # optional, defaults to true
  config.fog_attributes = {} # optional, defaults to {}
end