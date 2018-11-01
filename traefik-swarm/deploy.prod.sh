#!/usr/bin/env bash

source config.prod.sh && sudo -E docker stack deploy -c stack.yml alexlangberg
