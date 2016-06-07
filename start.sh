#!/bin/sh
export RACK_ENV=production
./app.rb -s Puma -o 10.1.0.3 -p 31337
