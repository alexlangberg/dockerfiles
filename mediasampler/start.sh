#!/bin/bash

echo "Running startup.sh"

source secrets.sh

git clone https://github.com/alexlangberg/node-mediasampler.git

mkdir -p /home/storage/mediasampler/chronostore

ln -s /home/storage/mediasampler/chronostore /home/node/node-mediasampler/chronostore

cd node-mediasampler

npm install

if [[ $PM2_SECRET_ID ]]; then
  pm2 link $PM2_SECRET_ID $PM2_PUBLIC_ID $PM2_MACHINE_NAME
  echo "Linked to keymetrics."
else
  echo "PM2_SECRET_ID not set. Not linked to keymetrics."
fi

pm2 start index.js --no-daemon -n sitesampler