source 'http://rubygems.org'

# main

gem "json"

# frontend

gem "sinatra"

gem "blizz"
gem "voidtools"

gem "haml"
gem "sass"


# database

gem "dm-core"
gem "dm-sqlite-adapter"
# gem "dm-mysql-adapter" # switch to mysql or postgres for production time
gem "dm-migrations"


# bitcoin related

gem "activemodel", "3.1"
gem "activesupport", "3.1"
gem "bitstamp" # note: better use raw api, I don't like requiring activemodel+activesupport in any of my apps

gem "chain-ruby"


group :test do
  gem "rspec-core"
  gem "rspec-mocks"
  gem "rspec-expectations"

  gem "rack-test"
end


# sinatra

group :development do
  gem "guard"
  gem "guard-sass",         require: false
  # gem "guard-coffeescript", require: false
  gem "guard-livereload",   require: false
end
