#!/usr/bin/env bash

mkdir -p /opt/portainer/data &&
mkdir -p /opt/traefik &&
touch /opt/traefik/acme.json &&
chmod 600 /opt/traefik/acme.json
