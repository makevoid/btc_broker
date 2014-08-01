class BtcBroker < Sinatra::Base

  # places a SELL order
  post "/orders" do

  end


  # listen for BTC deposits
  # post

  post "/chain/deposit" do
    {}.to_json
  end

end