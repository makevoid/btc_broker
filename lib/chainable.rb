class Chainable
  def start
    # get notified from chain


    # TODO: call this method, I don't really know why I'm getting a  JSON decoding error from chain api

    # one_time


  end

  def one_time
    Chain.create_webhook_url "http://#{SERVER_URL}", 'main'

    Chain.create_webhook_event('/chain/deposit',
      event: 'address-transaction',
      block_chain: 'bitcoin',
      address: MAIN_BTC_ADDRESS,
      confirmations: 0) # TODO: use at least 1 confirmation in production code, scale this number depending on the transaction size
  end
end