path = File.expand_path "../../", __FILE__

ENV["RACK_ENV"] = "test"
require "#{path}/config/env"

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :should
  end
end


def cleanup!
  DataMapper.auto_migrate!
end

# prepare test db

cleanup!