require 'rubygems'
require 'yaml'
require 'aws-sdk'

config_file = File.join(File.dirname(__FILE__), 'config.yml')

unless File.exist?(config_file)
  puts <<END
To run the samples, put your credentials in config.yml as follows:

access_key_id: YOUR_ACCESS_KEY_ID
secret_access_key: YOUR_SECRET_ACCESS_KEY
region: 'YOUR_REGION_NAME'
bucket_name: 'YOUR_buckET_NAME'

END
  exit 1
end

config = YAML.load(File.read(config_file))

unless config.kind_of?(Hash)
  puts <<END
config.yml is formatted incorrectly.  Please use the following format:

access_key_id: YOUR_ACCESS_KEY_ID
secret_access_key: YOUR_SECRET_ACCESS_KEY
region: 'YOUR_REGION_NAME'
bucket_name: 'YOUR_buckET_NAME'

END
  exit 1
end

AWS.config(config)

# TODO update public directory
puts config['bucket_name']
