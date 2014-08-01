class User

  include DataMapper::Resource

  property    :id,            Serial
  property    :username,      String#, required: true
  # TODO: probably an user should have a password
  #property    :btc_address,   String
  # TODO: FIXME: for safety, use a different address for each user
  property    :balance,      Integer

  has n, :deposits
  has n, :orders

end