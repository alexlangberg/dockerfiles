#!/bin/bash

echo "Running secrets.sh"

if [ -f /home/vault/secrets.sh ]; then
  source /home/vault/secrets.sh
else
    echo "No vault secrets found."
fi

export SITESAMPLER_LOG=1

# export SITESAMPLER_LOGGLY_SUBDOMAIN=
# export SITESAMPLER_LOGGLY_TOKEN=

# export SITESAMPLER_LOGENTRIES_TOKEN=

# export SITESAMPLER_SLACK_WEBHOOKURL=
