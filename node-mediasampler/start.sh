#!/bin/bash

echo "Running startup.sh"

git clone https://github.com/alexlangberg/node-mediasampler.git

cd node-mediasampler

npm install

pm2 start index.js --no-daemon -n mediasampler
