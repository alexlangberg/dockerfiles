#!/usr/bin/env bash

source config.dev.sh && sudo -E docker stack deploy -c stack.yml alexlangberg-dev
