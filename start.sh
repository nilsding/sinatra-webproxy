#!/bin/sh

ip_addr=10.1.0.3

export RACK_ENV=production
./app.rb -s Puma -o $ip_addr -p 31337
