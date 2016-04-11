#!/bin/bash
config="{\"users\": [{\"user\":\"$1\",\"pass\":\"$2\"}]}"
echo $config

npm install -g parse-dashboard
