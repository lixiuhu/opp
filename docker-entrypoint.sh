#!/bin/sh
set -e

if [ "$1" = 'production' ]; then
    yarn install
    if [ "$?" -gt 0 ]; then
        pm2-docker start --env production /app/pm2.json
    else
        echo "yarn install failed !!!!!!!!!!!"
    fi
fi

exec "$@"


