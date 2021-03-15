[[ ! -d /app/data/default ]]; then
    # this is first install, so setup /app/data and initial settings
    mkdir -p /app/data/default
    chown -R node-red:root /app/data && chmod -R g+rwX /app/data
    cp /app/code/node-red/settings.js /app/data
    cp /app/code/node-red/flows.json /app/data
    cp index.html /app/data/default
fi

echo "Starting Node-Red"
exec /usr/loca/bin/gosu node-red:root npm start --cache /app/data/.npm --userDir /app/data
