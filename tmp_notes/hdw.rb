
### money-tree - hierarchical deterministic wallet

#test seed: don't use for anything but testing!

seed_hex = "8d7f6b6692a98f06b0122edab78baa66019aa5ac37e1ae9e9cc8a513cc4875d9"
1CCHjuQiQN6bTjqcXujqSRdX87j6rwaZ3c (m/0/1)

other seed test:
"60675f26a5d36f2cf0ff780a1d300ef8a361c8ed2e032130b62f124ee8997a73"


####

require 'money-tree'
@master = MoneyTree::Master.new
@master.seed_hex # => seed_hex backup

####

require 'money-tree'
@master = MoneyTree::Master.new seed_hex: seed_hex


node = @master.node_for_path "m/0/1"
node.to_address
node.private_key.to_hex
