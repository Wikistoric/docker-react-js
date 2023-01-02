#!/bin/bash

docker run --detach --name react-js \
       --publish=8081:8081 \
       --volume=$(pwd)/app:/app \
       --env PORT=8081 \
       react-js
