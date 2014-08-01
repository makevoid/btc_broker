secrets = File.read( File.expand_path "~/.chain_api" ).strip
key_id, key_secret = secrets.split "|"

# notes: gem install chain-ruby


require 'chain'

# Chain.api_key_id      = key_id
# Chain.api_key_secret  = key_secret

### Address (balance, ...)

# addr_info = Chain.get_address '1CKv2c3mZC9fk3m5CMutLBtiu1AqhCFdyb'
#
# puts addr_info
# btc     = addr_info["balance"].to_f/10**8
# mbtc    = addr_info["balance"].to_f/10**6
# bits    = addr_info["balance"].to_f/10**2
#
# puts "#{btc} btc"
# puts "#{mbtc} mbtc"
# puts "#{bits} bits"



### Transactions

require 'pp'
transactions = Chain.get_address_transactions "1CKv2c3mZC9fk3m5CMutLBtiu1AqhCFdyb", limit: 2
pp transactions[1] # hash, amount, inputs, outputs

# input/output -> spent -> true/false
# required_signatures => 1 (no multisig)









# ---- doc


# Addresses and transactions

# get_addresses []
# get_address_transactions    []
# get_addresses_transactions  [], {} # => :limit
# get_address_unspents

# OP

# get_address_op_returns # opscode for features
# get_transaction_op_return


# Raw transaction

# send_transaction #=> http://blog.chain.com/post/86529167421/sending-bitcoin-transactions-with-node-js


# Blocks

# get_block hash
# get_block height
# get_latest_block

# get_block_op_returns


# Webhooks

# Chain.create_webhook_url('https://your-server.com', 'your-alias')

# Chain.create_webhook_event('your-webhook-url-alias',
# event: 'address-transaction',
# block_chain: 'bitcoin',
# address: '1...',
# confirmations: 2)

# https://chain.com/docs/ruby#webhooks-receiving

# wow!