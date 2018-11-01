#!/usr/bin/env bash

# Remember to create acme.json with chmod 600!
export TRAEFIK_CONFIG_FILE='./traefik.prod.toml'
export TRAEFIK_ACME_FILE='/opt/traefik/acme.json'

export HOST_DOMAIN='alexlangberg.dk'
export HOST_REDIRECT_REPLACE='https://alexlangberg.dk'

export HOST_WEBSITE='alexlangberg.dk,www.alexlangberg.dk'
export HOST_FEED2JSON='feed2json.alexlangberg.dk'
export HOST_FEEDMIXER='feedmixer.alexlangberg.dk'
export HOST_NETDATA='netdata.alexlangberg.dk'
export HOST_TRAEFIK='traefik.alexlangberg.dk'
export HOST_PORTAINER='portainer.alexlangberg.dk'

# Usually 999, used by netdata
export DOCKER_GROUP_ID=$(grep docker /etc/group | cut -d ':' -f 3)

# Change this before deployment!
# Generate with "htpasswd -nb [username] [password]" after installing apache2-utils
# Dev username: test, password: test
export TRAEFIK_BASIC_AUTH_CREDENTIALS=''

# Change this before deployment!
# Generate with htpasswd -nb -B admin test | cut -d ":" -f 2
# Dev username: admin, password: test
export PORTAINER_ADMIN_PASSWORD=''

export SERVICE_HOSTNAME_TEMPLATE='{{.Node.Hostname}}-{{.Service.Name}}-{{.Task.Slot}}-{{.Node.ID}}'
