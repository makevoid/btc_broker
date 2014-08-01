class BtcBroker < Sinatra::Base

  # places a SELL order
  post "/orders" do

  end


  # listen for BTC deposits from Chain api

  post '/' do # very strange way, but wathever (https://chain.com/docs/ruby#webhooks-setup)
    body(request.body.read)
  end

  post "/chain/deposit" do
    body = request.body.read
    payload = JSON.parse(body)
    if payload['event'] == 'address-transaction'

      # magic happens here, todo: move in an external model
      parse_deposit_transaction payload["transaction"]

      status(200)
      body('OK\n')
    else
      content_type :json
      status(200)
      body(body)
    end
  end


  def parse_deposit_transaction(tx)
    # TODO: FIXME: use a better way to find the transaction rather than the amount, but I saw many services doing that asking the user to deposit 0.100001, 0.100002, 0.100003 when the user wants to deposit 0.1 and use the satoshis as ids
    deposit = Deposit.find(amount: tx["amount"])
    deposit.received!
  end

end