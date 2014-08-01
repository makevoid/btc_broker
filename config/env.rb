require 'bundler/setup'
Bundler.require :default


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