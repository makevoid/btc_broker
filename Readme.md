# BTC Broker

Automatic btc broker

### The App!

This app is meant for people to have an easy way to sell their BTC at a maximum price (an automatic broker).  All a user has to do is go onto the site, deposit some BTC, and watch their deposit/sale go from “pending” to “complete” with a USD amount that is owed to them.

For security and application management reasons, they’ll have to register their payment so we can continually check if their payment has been received from the right from BTC address and for the right amount.


### quick analysis

main functions

- deposit BTC
- sell BTC at maximum price

implementations

- listen for transfers, check for the right amount
- use hdw
- ...




#### Final Readme.md

### Installing

ruby 1.9+ is required, i use 2.1 but any will be ok

    bundle


### Specs

run specs with:

    rspec
