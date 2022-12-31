#!/bin/sh

if [ ! -d /app/src ] ;then
  cd /app
  (cd /node; tar -c --exclude node_modules -f - *) | tar xf -
  ln -s ../node/node_modules
fi

exec "$@"
