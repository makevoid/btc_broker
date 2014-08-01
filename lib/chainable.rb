class Chainable
  def start
    # get notified from chain
    Chain.create_webhook_event('/chain/deposit',
      event: 'address-transaction',
      block_chain: 'bitcoin',
      address: MAIN_BTC_ADDRESS,
      confirmations: 0
    )
  end
end