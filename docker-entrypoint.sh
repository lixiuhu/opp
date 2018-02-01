#!/bin/sh
if [ "$1" = 'production' ]; then
    yarn install
    if [ "$?" -gt 0 ]; then
        echo "yarn install failed !!!!!!!!!!!"
    else
        pm2-docker start --env production /app/pm2.json
    fi
fi

