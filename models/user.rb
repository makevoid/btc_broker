class User

  include DataMapper::Resource

  property    :id,            Serial
  property    :username,      String#, required: true
  # TODO: probably an user should have a password
  #property    :btc_address,   String
  # TODO: FIXME: for safety, use a different address for each user
  property    :balance_btc,      Integer, default: 0
  property    :balance_usd,      Integer, default: 0 # 500_00 usd

  has n, :deposits
  has n, :orders


  # TODO: move in presenter or helper code

  def balance_btc_ui
    balance_btc.to_f * 10 ** -8
  end

  def balance_usd_ui
    balance_usd.to_f * 10 ** -2
  end

end