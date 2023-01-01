#!/bin/sh

cd /node
if [ -n "$NMPINSTALL" ] ;then
  npm install $NMPINSTALL
fi

cd /app
if [ ! -d /app/src ] ;then
  (cd /node; tar -c --exclude node_modules -f - *) | tar xf -
fi
if [ ! -e /app/node_modules ] ;then
  ln -s ../node/node_modules
elif [ ! -L /app/node_modules ] ;then
  echo "/app/node_modules exists and is not a link. The image seems to be broken."
fi

exec "$@"
