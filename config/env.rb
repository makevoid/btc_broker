require 'bundler/setup'
Bundler.require :default

# configurations:

MAIN_BTC_ADDRESS = "1EiNgZmQsFN4rJLZJWt93quMEz3X82FJd2"
# TODO: in a production version, use multiple addresses with HDW (hierarchical deterministic wallets)

SERVER_URL = "d2.mkvd.net:3003" # your server or local machine public ip / address


# infer path
path = File.expand_path "../../", __FILE__
PATH = path

# require 'logger'

# setup datamapper
environment = ENV["app_env"] || "development"
DataMapper.setup :default, "sqlite://#{path}/db/btc_broker_#{environment}.sqlite"

require "#{path}/models/deposit"
require "#{path}/models/user"
require "#{path}/models/order"

DataMapper.finalize



### BTC part config


# chain

secrets = File.read( File.expand_path "~/.chain_api" ).strip
key_id, key_secret = secrets.split "|"
Chain.api_key_id      = key_id
Chain.api_key_secret  = key_secret



# bitstamp

secrets = File.read( File.expand_path "~/.bitstamp" ).strip
user, key, secret = secrets.split "|"

Bitstamp.setup do |config|
  config.client_id  = user
  config.key        = key
  config.secret     = secret
end



### BTC part --- action!

require "#{path}/lib/chainable"

chain = Chainable.new
chain.start