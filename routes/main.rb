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


  # deposit request

  post "/deposit" do
    # TODO: params sanitization
    @deposit = current_user.deposits.create params[:deposit]
    haml :deposit_listen
  end


end

# note: this file will be separated in multiple routes files as the app grows