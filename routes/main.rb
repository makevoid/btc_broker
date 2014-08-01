class BtcBroker < Sinatra::Base
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

# note: this file will be separated in multiple routes files as the app grows