#!/usr/bin/env bash

# Remember to create acme.json with chmod 600!
export TRAEFIK_CONFIG_FILE='./traefik.dev.toml'
export TRAEFIK_ACME_FILE='/opt/traefik/acme.json'

export HOST_DOMAIN='localhost'
export HOST_REDIRECT_REPLACE='http://localhost'

export HOST_WEBSITE='localhost,www.localhost'
export HOST_FEED2JSON='feed2json.localhost'
export HOST_FEEDMIXER='feedmixer.localhost'
export HOST_NETDATA='netdata.localhost'
export HOST_TRAEFIK='traefik.localhost'
export HOST_PORTAINER='portainer.localhost'

# Usually 999, used by netdata
export DOCKER_GROUP_ID=$(grep docker /etc/group | cut -d ':' -f 3)

# Change this before deployment!
# Generate with "htpasswd -nb [username] [password]" after installing apache2-utils
# Dev username: test, password: test
export TRAEFIK_BASIC_AUTH_CREDENTIALS='test:$apr1$B0Lq6ogg$TcyZN.GPkxR82qOzmSg3w1'

export SERVICE_HOSTNAME_TEMPLATE='{{.Node.Hostname}}-{{.Service.Name}}-{{.Task.Slot}}-{{.Node.ID}}'
