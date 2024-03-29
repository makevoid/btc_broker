path = File.expand_path '../', __FILE__

require "#{path}/config/env.rb"

class BtcBroker < Sinatra::Base
  use Rack::MethodOverride

  include Voidtools::Sinatra::ViewHelpers


  require "#{PATH}/lib/mixins/view_helpers"
  helpers do
    include ViewHelpers
  end


  # login part, todo: implement and move
  def current_user
    @current_user ||= User.first
  end


  # note: routes are in /routes directory

end

require "#{PATH}/routes/main"
require "#{PATH}/routes/api"