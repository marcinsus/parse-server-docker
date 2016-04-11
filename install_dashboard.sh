#!/bin/bash
read -d '' config <<EOF
{
  "users": [
    {
      "user":"$1",
      "pass":"$2"
    }
  ],
  "apps": [
    {
      "serverURL": "http://localhost:8080",
      "appId": "$APP_ID",
      "masterKey": "$MASTER_KEY",
      "appName": "My Parse Server App"
    }
  ]
}
EOF
echo $config > /var/parse-dashboard-config.json

npm install -g parse-dashboard
