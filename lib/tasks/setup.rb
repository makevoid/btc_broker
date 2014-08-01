require_relative "../../config/env"

DataMapper.auto_migrate!

# dev only: create dummy user

user = User.create username: "Ali"

# fake user deposit, starting with 0.1 BTC

dep = user.deposits.create amount: (0.1 * 10**8)
dep.received!