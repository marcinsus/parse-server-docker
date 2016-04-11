#!/bin/sh
parse-dashboard --allowInsecureHTTP=1 --appId $APP_ID --masterKey $MASTER_KEY --serverURL "http://localhost:8080" --appName optionalName --config /var/parse-dashboard-config.json
