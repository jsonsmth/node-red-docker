#!/bin/bash

set -eu

if [[ ! -d /app/data/default ]]
then
    # this is first install, so setup /app/data and initial settings
    mkdir -p /app/data/default
    cp /app/code/settings.js /app/data
    cp /app/code/flows.json /app/data
    cp /app/code/index.html /app/data/default
    chown -R node-red:root /app/data && chmod -R g+rwX /app/data
fi

echo "Starting Node-Red"

#start Node-RED with settings from /app/data

exec gosu node-red npm start --cache /app/data/.npm -- --userDir /app/data --settings /app/data/settings.js
