#!/bin/bash

docker-compose stop \
&& docker rm nodemediasampler_mediasampler_1 \
&& docker rmi nodemediasampler_mediasampler \
&& docker-compose up -d