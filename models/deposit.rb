class Deposit

  include DataMapper::Resource

  property    :id,            Serial
  property    :amount,        Integer # BTC, in satoshis

  property    :received,      Boolean, default: false

  property    :created_at,    DateTime

  belongs_to :user

  after :create do
    self.created_at = Time.now
  end

  def amount_btc
    amount.to_f * 10 ** -8
  end

  def received!
    self.received = true
    self.save
    user.balance_btc += self.amount
    user.save
  end

end