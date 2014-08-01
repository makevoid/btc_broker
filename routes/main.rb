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
    amount = params[:deposit][:amount].to_f * 10**8

    @deposit = current_user.deposits.create amount: amount
    haml :deposit_listen
  end


end

# note: this file will be separated in multiple routes files as the app grows