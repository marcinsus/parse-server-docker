#!/bin/bash
read -d '' config <<EOF
{
  "users": [
    {
      "user":"$APP_ID",
      "pass":"$MASTER_KEY"
    }
  ],
  "apps": [
    {
      "serverURL": "$SERVER_URL",
      "appId": "$APP_ID",
      "masterKey": "$MASTER_KEY",
      "appName": "My Parse Server App"
    }
  ]
}
EOF
echo "Config file:\n$config"
echo $config > /var/parse-dashboard-config.json

parse-dashboard --allowInsecureHTTP=1 --config /var/parse-dashboard-config.json
