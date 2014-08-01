class Order
  include DataMapper::Resource

  property    :id,            Serial

  property    :amount,        Integer # BTC, in satoshis
  property    :price,         Integer # "
  property    :created_at,    DateTime

  alias :placed_at :created_at

  belongs_to :user


  before :create do
    self.created_at = Time.now
    bitstamp_place_order
  end

  def bitstamp_place_order
    # amount = self.amount * 10 ** -8 # TODO: use amount in the DB
    amount = 0.0001

    price = Bitstamp::Ticker.low
    Bitstamp.orders.sell(amount: amount, price: price)

    transaction = Bitstamp.user_transactions.all(limit: 1).first
    transaction.btc_usd
    raise transaction.btc_usd.inspect
  end

end