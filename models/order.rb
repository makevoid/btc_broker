class Order
  include DataMapper::Resource

  property    :id,            Serial

  property    :amount,        Integer # BTC, in satoshis
  property    :created_at,    DateTime

  alias :placed_at :created_at

  belongs_to :user


  before :create do
    self.created_at = Time.now
  end


  def bitstamp_place_order!
    # amount = self.amount * 10 ** -8 # TODO: use amount in the DB
    amount = 0.009 # TODO: minimum order size for bitstamp is 5$

    price = Bitstamp::Ticker.low
    Bitstamp.orders.sell(amount: amount, price: price)

    transaction = Bitstamp.user_transactions.all(limit: 1).first

    tx_btc_amount = transaction.btc.to_f * -1

    if tx_btc_amount == amount
      user.balance_usd += (transaction.usd.to_f * 100).to_i
      user.save
    else
      # TODO: implement transaction backcheck (async)
      puts "DEBUG: Last transaction not matched"
    end
  end

end