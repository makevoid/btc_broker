class Deposit

  include DataMapper::Resource

  property    :id,            Serial
  property    :amount,        Integer # BTC, in satoshis

  property    :created_at,    DateTime


  after :create do
    self.created_at = Time.now
  end

end