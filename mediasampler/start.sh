#!/bin/bash

echo "Running startup.sh"

source secrets.sh

STORAGE_PATH="/home/storage/mediasampler/chronostore"
STORAGE_PATH_APP="/home/node/node-mediasampler/chronostore"

git clone https://github.com/alexlangberg/node-mediasampler.git

if [ ! -d $STORAGE_PATH ]; then
  echo "Storage folder doesn't exist, creating ${STORAGE_PATH}."
  mkdir -p $STORAGE_PATH
fi

if [ ! -d $STORAGE_PATH_APP ]; then
  echo "App folder symlink doesn't exist, linking ${STORAGE_PATH} to ${STORAGE_PATH_APP}."
  ln -s $STORAGE_PATH $STORAGE_PATH_APP
fi

cd node-mediasampler

npm install

if [[ $PM2_SECRET_ID ]]; then
  pm2 link $PM2_SECRET_ID $PM2_PUBLIC_ID $PM2_MACHINE_NAME
  echo "Linked to keymetrics."
else
  echo "PM2_SECRET_ID not set. Not linked to keymetrics."
fi

pm2 start index.js --no-daemon -n sitesampler