#!/bin/bash

groupadd -r nodegroup \
& useradd -r -m -g nodegroup node \
& install -d -o node -g nodegroup -m 755 ./data
