class Order
  include DataMapper::Resource

  property    :id,            Serial

  property    :amount,        Integer # BTC, in satoshis
  property    :price,         Integer # "
  property    :created_at,    DateTime

  alias :placed_at :created_at


  after :create do
    self.created_at = Time.now
  end

end