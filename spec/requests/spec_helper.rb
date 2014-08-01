path = File.expand_path "../../../", __FILE__
require "spec_helper"

require 'rack/test'

def app
  BtcBroker
end
include Rack::Test::Methods

# enable :sessions

require "#{path}/bitcoin_exchange"


# specs helper methods, TODO: review before using them

def body
  last_response.body
end
