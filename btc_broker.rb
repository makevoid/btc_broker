path = File.expand_path '../', __FILE__

require "#{path}/config/env.rb"

class BtcBroker < Sinatra::Base
  use Rack::MethodOverride

  include Voidtools::Sinatra::ViewHelpers


  require "#{PATH}/lib/mixins/view_helpers"
  helpers do
    include ViewHelpers
  end

  get "/" do
    haml :index
  end

  get "/deposit" do
    haml :deposit
  end

  get "/sell" do
    haml :sell
  end

end