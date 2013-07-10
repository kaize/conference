CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => ENV['aws_id'],
    :aws_secret_access_key  => ENV['aws_secret']
  }
  config.fog_directory  = 'conference73'
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
  config.cache_dir = "#{Rails.root}/tmp/uploads"
end
