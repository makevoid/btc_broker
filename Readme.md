# BTC Broker

Automatic btc broker

Ruby Sinatra app

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

ruby 1.9+ is required, I use 2.1 but any will be ok

    bundle

### Prepare the db

run

    ruby lib/tasks/setup.rb

### Configuring

you need two conf files with api key and secret separated by the character "|"

Bitstamp: ./bitstamp
Chain:    ./chain_api


example: API_KEY|API_SECRET


---


you need to edit config/env.rb and change the following constants:

MAIN_BTC_ADDRESS

with a btc address you control (with zero funds is ok)


### Running

    rackup

visit http://localhost:9292

### Specs

run specs with:

    rspec
