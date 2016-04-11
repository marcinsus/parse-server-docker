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
      "serverURL": "$5",
      "appId": "$3",
      "masterKey": "$4",
      "appName": "My Parse Server App"
    }
  ]
}
EOF
echo "Config file:\n$config"
echo $config > /var/parse-dashboard-config.json

npm install -g parse-dashboard
