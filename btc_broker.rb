path = File.expand_path '../', __FILE__

require "#{path}/config/env.rb"

class BtcBroker < Sinatra::Base
  use Rack::MethodOverride

  require "#{path}/lib/mixins/view_helpers"
  include Voidtools::Sinatra::ViewHelpers


  helpers do
    # include ViewHelpers
  end

  get "/" do
    haml :index
  end

end