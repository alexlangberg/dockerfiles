#!/bin/bash

docker-compose down \
&& docker rmi nodemediasampler_mediasampler \
&& docker rmi nodemediasampler_nginx \
&& docker rmi nodemediasampler_node \
&& docker rmi nodemediasampler_debian \
&& docker-compose up -d