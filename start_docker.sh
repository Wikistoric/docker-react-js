#!/bin/bash

docker run --detach --name react-js \
       --publish=8081:3000 \
       --volume=$(pwd)/app:/app \
       react-js
